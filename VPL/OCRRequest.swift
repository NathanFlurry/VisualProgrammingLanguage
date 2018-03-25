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

typealias OCRResultBreakdown = [(String, UIImage)?]

class OCRRequest {
    private static let loadingCharacter = "\u{FFFC}"
    private static let failureCharacter = "\u{FFFD}"
    
    private let model: VNCoreMLModel
    
    private let image: UIImage
    
    private var queryResults = [Int: [Int: String]]()
    private var queryImages = [Int: [Int: UIImage]]()
    
    private let onComplete: (String, OCRResultBreakdown) -> Void
    
    public var completed: Bool {
        // Check if there are still any nil values
        for (_, wordData) in queryResults {
            for (_, char) in wordData {
                if char == OCRRequest.loadingCharacter {
                    return false
                }
            }
        }
        return true
    }
    
    @discardableResult
    public init(image: UIImage, onComplete: @escaping (String, OCRResultBreakdown) -> Void) throws {
        // Save the image
        let convertedImage = image |> adjustColors |> convertToGrayscale
        self.image = image
        self.onComplete = onComplete
        
        // Save the model
//        self.model = try VNCoreMLModel(for: Alphanum_28x28().model)
        self.model = try VNCoreMLModel(for: chars74k().model)
        
        // Start the request
        let handler = VNImageRequestHandler(cgImage: convertedImage.cgImage!)
        let request: VNDetectTextRectanglesRequest = VNDetectTextRectanglesRequest(completionHandler: detectTextHandler)
        request.reportCharacterBoxes = true
        try handler.perform([request])
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
            queryImages[wordIndex] = [:]
            
            // Place a spot in the results
            for (charIndex, _) in charBoxes.enumerated() {
                queryResults[wordIndex]![charIndex] = OCRRequest.loadingCharacter
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
                if let cropped = crop(image: image, rectangle: charBox) {
                    // Classify the image
                    //                    let processedImage = preProcess(image: cropped, size: CGSize(width: 28, height: 28))
                    let processedImage = preProcess(image: cropped, size: CGSize(width: 128, height: 128))
                    queryImages[wordIndex]![charIndex] = processedImage
                    self.classifyImage(image: processedImage, wordIndex: wordIndex, characterIndex: charIndex)
                } else {
                    print("Failed to clip character.")
                    queryResults[wordIndex]![charIndex] = OCRRequest.failureCharacter
                }
            }
        }
        
        // Attempt completion, in case there rae no results
        self.attemptCompletion()
    }
    
    private func classifyImage(image: UIImage, wordIndex: Int, characterIndex: Int) {
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
            self.queryResults[wordIndex]![characterIndex] = result
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
                guard character != OCRRequest.loadingCharacter else {
                    print("Character is still loading.")
                    return ("", [])
                }
                
                // Add the character
                result += character
                
                // Add the breakdown
                if let queryImage = queryImages[wordIndex]?[characterIndex] {
                    resultBreakdown.append((character, queryImage))
                } else {
                    print("Failed to find image for result breakdown.")
                }
                
                // Next character
                characterIndex += 1
            }
            
            // Add space
            result += " "
            resultBreakdown.append(nil)
            
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
