//
//  OCRRequest.swift
//  VPL
//
//  Created by Nathan Flurry on 3/18/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

/*
 Alphanum database generated from https://github.com/ProjectAGI/Preprocess-NIST-SD19
 Alphanum model borrowed from https://github.com/martinmitrevski/TextRecognizer
 Chars74k model borrowed from https://github.com/thijsheijden/Visionary
 */

import UIKit
import Vision

typealias OCRResultBreakdown = [OCRResult?]

enum OCRResult {
    case loading, some(String, UIImage, CGRect), failure
}

enum OCRDataset {
    case digits, alphanum, chars74k

    func createModel() throws -> VNCoreMLModel {
        switch self {
        case .digits:
            return try VNCoreMLModel(for: MNIST().model)
        case .alphanum:
            return try VNCoreMLModel(for: Alphanum_28x28().model)
        case .chars74k:
            return try VNCoreMLModel(for: Chars74k().model)
        }
    }

    func preprocess(input: UIImage) -> UIImage {
        switch self {
        case .digits:
            return preProcess(image: input, size: CGSize(width: 28, height: 28), invert: true)
        case .alphanum:
            return preProcess(image: input, size: CGSize(width: 28, height: 28))
        case .chars74k:
            return preProcess(image: input, size: CGSize(width: 128, height: 128))
        }
    }
}

@available(iOS 11.0, *)
class OCRRequest {
    /// The dataset being used by the request.
    private let dataset: OCRDataset

    /// Model used for the request
    private let model: VNCoreMLModel

    /// Image that was given to the request.
    private let image: UIImage

    /// Results of the request.
    private var queryResults = [Int: [Int: OCRResult]]()

    /// Callback for when the request is complete.
    private let onComplete: (String, OCRResultBreakdown) -> Void

    /// If the request is complete.
    public var completed: Bool {
        // Check if there are still any nil values
        for (_, wordData) in queryResults {
            for (_, char) in wordData {
                // Check if still loading
                if case .loading = char {
                    return false
                }
            }
        }
        return true
    }

    @discardableResult
    public init(dataset: OCRDataset, image: UIImage, singleCharacter: Bool, onComplete: @escaping (String, OCRResultBreakdown) -> Void) throws {
        // Save the image
        self.dataset = dataset
        let convertedImage = image |> adjustColors |> convertToGrayscale
        self.image = image
        self.onComplete = onComplete

        // Save the model
        self.model = try dataset.createModel()

        if singleCharacter {
            // Set the query results
            queryResults = [0: [0: .loading]]

            // Get the cropped image for the character
            let charBox = image.trimWhiteRect()
            if let cropped = image.cropping(to: charBox) {
                // Classify the image
                let processedImage = dataset.preprocess(input: cropped)
                self.classifyImage(image: processedImage, charBox: charBox, wordIndex: 0, characterIndex: 0)
            } else {
                print("Failed to clip character.")
                queryResults[0]![0] = .failure
            }
        } else {
            // Start the request
            let handler = VNImageRequestHandler(cgImage: convertedImage.cgImage!)
            let request = VNDetectTextRectanglesRequest(completionHandler: detectTextHandler)
            request.reportCharacterBoxes = true
            try handler.perform([request])
        }
    }

    private func detectTextHandler(request: VNRequest, error: Error?) {
        // Validate the results
        if let error = error {
            print("Detect text error:", error)
            return
        }
        guard let observations = request.results as? [VNTextObservation] else {
            print("No results.")
            return
        }

        // Setup query results
        for (wordIndex, observation) in observations.enumerated() {
            guard let charBoxes = observation.characterBoxes else {
                continue
            }

            // Add dictionary to results
            queryResults[wordIndex] = [:]

            // Place a spot in the results
            for (charIndex, _) in charBoxes.enumerated() {
                queryResults[wordIndex]![charIndex] = .loading
            }
        }

        // Handle each observation
        for (wordIndex, observation) in observations.enumerated() {
            // Validate char boxes
            guard let charBoxes = observation.characterBoxes else {
                print("Missing character boxes for observation.")
                continue
            }


            // Handle each character box
            for (charIndex, charBox) in charBoxes.enumerated() {
                // Get the cropped image for the character
                let charBox = charBox.applyTo(size: image.size)
                if let cropped = image.cropping(to: charBox) {
                    // Classify the image
                    let processedImage = dataset.preprocess(input: cropped)
                    self.classifyImage(image: processedImage, charBox: charBox, wordIndex: wordIndex, characterIndex: charIndex)
                } else {
                    print("Failed to clip character.")
                    queryResults[wordIndex]![charIndex] = .failure
                }
            }
        }

        // Attempt completion, in case there rae no results
        self.attemptCompletion()
    }

    private func classifyImage(image: UIImage, charBox: CGRect, wordIndex: Int, characterIndex: Int) {
        // Convert the image
        guard let ciImage = CIImage(image: image) else {
            print("Failed to convert UIImage to CIImage.")
            return
        }

        // Create a request
        let request = VNCoreMLRequest(model: model) { (request, error) in
            // Get the resulting string
            guard
                let results = request.results as? [VNClassificationObservation],
                let result = results.first?.identifier
            else {
                print("Incorrect result type from VNCoreMLRequest.")
                return
            }

            // Insert the result
            objc_sync_enter(self)
            self.queryResults[wordIndex]![characterIndex] = .some(result, image, charBox)
            objc_sync_exit(self)

            // Try completing the request
            self.attemptCompletion()
        }

        // Handle the request
        let handler = VNImageRequestHandler(ciImage: ciImage)
        DispatchQueue.global(qos: .userInteractive).async {
            do {
                try handler.perform([request])
            } catch {
                print("Failed to calssify image: \(error)")
            }
        }
    }

    private func serializeResults() -> (String, OCRResultBreakdown) {
        // Iterate through each word and append the characters to the string
        var result = ""
        var resultBreakdown = OCRResultBreakdown()
        var wordIndex = 0
        while let wordData = queryResults[wordIndex] {
            var characterIndex = 0
            while let character = wordData[characterIndex] {
                switch character {
                case .loading:
                    print("Character is still loading.")
                    return ("", [])
                case .some(let string, _, _):
                    result += string
                    resultBreakdown.append(character)
                case .failure:
                    print("Character failure.")
                }

                // Next character
                characterIndex += 1
            }

            // Add space if not the last word
            if queryResults[wordIndex + 1] != nil {
                result += " "
                resultBreakdown.append(nil)
            }

            // Next word
            wordIndex += 1
        }

        return (result, resultBreakdown)
    }

    private func attemptCompletion() {
        // Make sure it's completed
        guard completed else {
            return
        }

        // Serialize the result
        let result = self.serializeResults()

        // Call the completion handler
        DispatchQueue.main.async {
            self.onComplete(result.0, result.1)
        }
    }
}

extension DrawingCanvas {
    func overlayOCRBreakdown(breakdown: OCRResultBreakdown) {
        // Create new context
        UIGraphicsBeginImageContextWithOptions(overlayImageView.frame.size, false, UIScreen.main.scale)
        guard let context = UIGraphicsGetCurrentContext() else {
            print("Failed to create overlay context.")
            return
        }

        for char in breakdown {
            // Make sure it's not a aspace
            guard let char = char else {
                continue
            }

            // Draw debug info
            if case let .some(string, _, charBox) = char {
                // Draw each rect
                context.setFillColor(red: 1, green: 0, blue: 0, alpha: 0.2)
                context.addRect(charBox)
                context.fillPath()

                // Draw each character
                context.setFillColor(red: 0, green: 0, blue: 0, alpha: 1.0)
                let paragraphStyle = NSMutableParagraphStyle()
                paragraphStyle.alignment = .center
                (string as NSString).draw(
                    with: charBox,
                    options: .usesLineFragmentOrigin,
                    attributes: [
                        NSAttributedStringKey.font: UIFont.systemFont(ofSize: 36),
                        NSAttributedStringKey.paragraphStyle: paragraphStyle
                    ],
                    context: nil
                )
            }
        }

        // Finish context
        overlayImageView.image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
    }
}
