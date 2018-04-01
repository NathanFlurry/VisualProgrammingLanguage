//
// Alphanum_28x28.swift
//
// This file was automatically generated and should not be edited.
//

import CoreML


/// Model Prediction Input Type
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
class Alphanum_28x28Input : MLFeatureProvider {

    /// 28x28 image as grayscale (kCVPixelFormatType_OneComponent8) image buffer, 28 pixels wide by 28 pixels high
    var Image: CVPixelBuffer
    
    var featureNames: Set<String> {
        get {
            return ["Image"]
        }
    }
    
    func featureValue(for featureName: String) -> MLFeatureValue? {
        if (featureName == "Image") {
            return MLFeatureValue(pixelBuffer: Image)
        }
        return nil
    }
    
    init(Image: CVPixelBuffer) {
        self.Image = Image
    }
}


/// Model Prediction Output Type
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
class Alphanum_28x28Output : MLFeatureProvider {

    /// robabilities for each of the 36 classes as dictionary of strings to doubles
    let Probabilities: [String : Double]

    /// Predicted alphanumeric character as string value
    let Class_: String
    
    var featureNames: Set<String> {
        get {
            return ["Probabilities", "Class"]
        }
    }
    
    func featureValue(for featureName: String) -> MLFeatureValue? {
        if (featureName == "Probabilities") {
            return try! MLFeatureValue(dictionary: Probabilities as [NSObject : NSNumber])
        }
        if (featureName == "Class") {
            return MLFeatureValue(string: Class_)
        }
        return nil
    }
    
    init(Probabilities: [String : Double], Class_: String) {
        self.Probabilities = Probabilities
        self.Class_ = Class_
    }
}


/// Class for model loading and prediction
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
class Alphanum_28x28 {
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
        let bundle = Bundle(for: Alphanum_28x28.self)
        let assetPath = bundle.url(forResource: "Alphanum_28x28", withExtension:"mlmodelc")
        try! self.init(contentsOf: assetPath!)
    }

    /**
        Make a prediction using the structured interface
        - parameters:
           - input: the input to the prediction as Alphanum_28x28Input
        - throws: an NSError object that describes the problem
        - returns: the result of the prediction as Alphanum_28x28Output
    */
    func prediction(input: Alphanum_28x28Input) throws -> Alphanum_28x28Output {
        let outFeatures = try model.prediction(from: input)
        let result = Alphanum_28x28Output(Probabilities: outFeatures.featureValue(for: "Probabilities")!.dictionaryValue as! [String : Double], Class_: outFeatures.featureValue(for: "Class")!.stringValue)
        return result
    }

    /**
        Make a prediction using the convenience interface
        - parameters:
            - Image: 28x28 image as grayscale (kCVPixelFormatType_OneComponent8) image buffer, 28 pixels wide by 28 pixels high
        - throws: an NSError object that describes the problem
        - returns: the result of the prediction as Alphanum_28x28Output
    */
    func prediction(Image: CVPixelBuffer) throws -> Alphanum_28x28Output {
        let input_ = Alphanum_28x28Input(Image: Image)
        return try self.prediction(input: input_)
    }
}
