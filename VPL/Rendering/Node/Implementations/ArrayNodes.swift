//
//  ArrayNodes.swift
//  VPL
//
//  Created by Nathan Flurry on 3/30/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import Foundation

class ArrayCreateNode: DisplayableNode {
    static let shortcutCharacter: String? = "A"
    
    static let id: String = "array-create"
    static let name: String = "Create Array"
    var output: NodeOutput = .value(OutputValue(type: .generic("Array", [.unknown])))
    var contentView: DisplayableNodeContentView? { return input }
    
    var input: GenericInputView!
    
    required init() {
        input = GenericInputView(node: self, fields: [
            GenericInputViewField(name: "Content Type", defaultValue: "Int")
        ])
        
        self.setupConnections()
    }
    
    func assemble() -> String {
        return "[\(input.fields[0].value)]()"
    }
}

class ArrayAppendNode: DisplayableNode {
    static let shortcutCharacter: String? = "A"
    
    static let id: String = "array-appent"
    static let name: String = "Append to Array"
    var inputTrigger: InputTrigger? = InputTrigger()
    var inputValues: [InputValue] = [
        InputValue(id: "array", name: "Array", type: .array(.unknown)),
        InputValue(id: "value", name: "Value", type: .unknown)
    ]
    var output: NodeOutput = .triggers([OutputTrigger()])
    
    required init() {
        self.setupConnections()
    }
    
    func assemble() -> String {
        var out = ""
        out !+= "\(inputValues[0].assemble()).append(\(inputValues[1].assemble()))"
        return out + assembleOutputTrigger()
    }
}

class ArraySetAtNode: DisplayableNode {
    static let shortcutCharacter: String? = "A"
    
    static let id: String = "array-set-at"
    static let name: String = "Set At Index"
    var inputTrigger: InputTrigger? = InputTrigger()
    var inputValues: [InputValue] = [
        InputValue(id: "array", name: "Array", type: .array(.unknown)),
        InputValue(id: "index", name: "Index", type: .int),
        InputValue(id: "value", name: "Value", type: .unknown)
    ]
    var output: NodeOutput = .triggers([OutputTrigger()])
    
    required init() {
        self.setupConnections()
    }
    
    func assemble() -> String {
        var out = ""
        out !+= "\(inputValues[0].assemble())[\(inputValues[1].assemble())] = \(inputValues[2].assemble())"
        return out + assembleOutputTrigger()
    }
}

class ArrayGetAtNode: DisplayableNode {
    static let shortcutCharacter: String? = "A"
    
    static let id: String = "array-get-at"
    static let name: String = "Get At Index"
    var inputValues: [InputValue] = [
        InputValue(id: "array", name: "Array", type: .array(.unknown)),
        InputValue(id: "index", name: "Index", type: .int)
    ]
    var output: NodeOutput = .value(OutputValue(type: .unknown))
    
    required init() {
        self.setupConnections()
    }
    
    func assemble() -> String {
        return "\(inputValues[0].assemble())[\(inputValues[1].assemble())]"
    }
}

class ArrayRemoveAtNode: DisplayableNode {
    static let shortcutCharacter: String? = "A"
    
    static let id: String = "array-remove-at"
    static let name: String = "Remove At Index"
    var inputTrigger: InputTrigger? = InputTrigger()
    var inputValues: [InputValue] = [
        InputValue(id: "array", name: "Array", type: .array(.unknown)),
        InputValue(id: "index", name: "Index", type: .int)
    ]
    var output: NodeOutput = .triggers([OutputTrigger()])
    
    required init() {
        self.setupConnections()
    }
    
    func assemble() -> String {
        var out = ""
        out !+= "\(inputValues[0].assemble()).remove(at: \(inputValues[1].assemble()))"
        return out + assembleOutputTrigger()
    }
}

class ArrayCountNode: DisplayableNode {
    static let shortcutCharacter: String? = "A"
    
    static let id: String = "array-count"
    static let name: String = "Item Count"
    var inputValues: [InputValue] = [InputValue(id: "array", name: "Array", type: .array(.unknown))]
    var output: NodeOutput = .value(OutputValue(type: .int))
    
    required init() {
        self.setupConnections()
    }
    
    func assemble() -> String {
        return "\(inputValues[0].assemble()).count"
    }
}
