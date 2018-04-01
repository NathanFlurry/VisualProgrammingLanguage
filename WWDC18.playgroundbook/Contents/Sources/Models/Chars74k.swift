//
// Chars74k.swift
//
// This file was automatically generated and should not be edited.
//

import CoreML


/// Model Prediction Input Type
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
class Chars74kInput : MLFeatureProvider {

    /// A 128x128 pixel Image as color (kCVPixelFormatType_32BGRA) image buffer, 128 pixels wide by 128 pixels high
    var input: CVPixelBuffer
    
    var featureNames: Set<String> {
        get {
            return ["input"]
        }
    }
    
    func featureValue(for featureName: String) -> MLFeatureValue? {
        if (featureName == "input") {
            return MLFeatureValue(pixelBuffer: input)
        }
        return nil
    }
    
    init(input: CVPixelBuffer) {
        self.input = input
    }
}


/// Model Prediction Output Type
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
class Chars74kOutput : MLFeatureProvider {

    /// output1 as dictionary of strings to doubles
    let output1: [String : Double]

    /// classLabel as string value
    let classLabel: String
    
    var featureNames: Set<String> {
        get {
            return ["output1", "classLabel"]
        }
    }
    
    func featureValue(for featureName: String) -> MLFeatureValue? {
        if (featureName == "output1") {
            return try! MLFeatureValue(dictionary: output1 as [NSObject : NSNumber])
        }
        if (featureName == "classLabel") {
            return MLFeatureValue(string: classLabel)
        }
        return nil
    }
    
    init(output1: [String : Double], classLabel: String) {
        self.output1 = output1
        self.classLabel = classLabel
    }
}


/// Class for model loading and prediction
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
class Chars74k {
    var model: MLModel

    /**
        Construct a model with explicit path to mlmodel file
        - parameters:
           - url: the file url of the model
           - throws: an NSError object that describes the problem
    */
    init(contentsOf url: URL) throws {
        self.model = try MLModel(contentsOf: url)
    }

    /// Construct a model that automatically loads the model from the app's bundle
    convenience init() {
        let bundle = Bundle(for: Chars74k.self)
        let assetPath = bundle.url(forResource: "Chars74k", withExtension:"mlmodelc")
        try! self.init(contentsOf: assetPath!)
    }

    /**
        Make a prediction using the structured interface
        - parameters:
           - input: the input to the prediction as Chars74kInput
        - throws: an NSError object that describes the problem
        - returns: the result of the prediction as Chars74kOutput
    */
    func prediction(input: Chars74kInput) throws -> Chars74kOutput {
        let outFeatures = try model.prediction(from: input)
        let result = Chars74kOutput(output1: outFeatures.featureValue(for: "output1")!.dictionaryValue as! [String : Double], classLabel: outFeatures.featureValue(for: "classLabel")!.stringValue)
        return result
    }

    /**
        Make a prediction using the convenience interface
        - parameters:
            - input: A 128x128 pixel Image as color (kCVPixelFormatType_32BGRA) image buffer, 128 pixels wide by 128 pixels high
        - throws: an NSError object that describes the problem
        - returns: the result of the prediction as Chars74kOutput
    */
    func prediction(input: CVPixelBuffer) throws -> Chars74kOutput {
        let input_ = Chars74kInput(input: input)
        return try self.prediction(input: input_)
    }
}
