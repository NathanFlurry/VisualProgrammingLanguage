//
//  DictionaryNodes.swift
//  VPL
//
//  Created by Nathan Flurry on 3/30/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

class DictionaryCreateNode: DisplayableNode {
    static let shortcutCharacter: String? = "D"
    
    static let id: String = "dict-create"
    static let name: String = "Create Dictionary"
    var output: NodeOutput = .value(OutputValue(type: .dictionary(.unknown, .unknown)))
    var contentView: DisplayableNodeContentView? { return input }
    
    var input: GenericInputView!
    
    required init() {
        input = GenericInputView(node: self, fields: [
            GenericInputViewField(name: "Key Type", defaultValue: "String"),
            GenericInputViewField(name: "Value Type", defaultValue: "Int")
        ])
        
        self.setupConnections()
    }
    
    func assemble() -> String {
        return "[\(input.fields[0].value) : \(input.fields[1].value)]()"
    }
}

class DictionarySetAtNode: DisplayableNode {
    static let shortcutCharacter: String? = "D"
    
    static let id: String = "dict-set-at"
    static let name: String = "Set At Key"
    var inputTrigger: InputTrigger? = InputTrigger()
    var inputValues: [InputValue] = [
        InputValue(id: "dict", name: "Dictionary", type: .dictionary(.unknown, .unknown)),
        InputValue(id: "key", name: "Key", type: .unknown),
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

class DictionaryGetAtNode: DisplayableNode {
    static let shortcutCharacter: String? = "D"
    
    static let id: String = "dict-get-at"
    static let name: String = "Get At Key"
    var inputValues: [InputValue] = [
        InputValue(id: "dict", name: "Dictionary", type: .dictionary(.unknown, .unknown)),
        InputValue(id: "key", name: "Key", type: .unknown)
    ]
    var output: NodeOutput = .value(OutputValue(type: .unknown))
    
    required init() {
        self.setupConnections()
    }
    
    func assemble() -> String {
        return "\(inputValues[0].assemble())[\(inputValues[1].assemble())]!"
    }
}

class DictionaryContainsKeyNode: DisplayableNode {
    static let shortcutCharacter: String? = "D"
    
    static let id: String = "dict-get-at"
    static let name: String = "Contains Key"
    var inputValues: [InputValue] = [
        InputValue(id: "dict", name: "Dictionary", type: .dictionary(.unknown, .unknown)),
        InputValue(id: "key", name: "Key", type: .unknown)
    ]
    var output: NodeOutput = .value(OutputValue(type: .bool))
    
    required init() {
        self.setupConnections()
    }
    
    func assemble() -> String {
        return "(\(inputValues[0].assemble())[\(inputValues[1].assemble())] != nil)"
    }
}

class DictionaryRemoveAtNode: DisplayableNode {
    static let shortcutCharacter: String? = "D"
    
    static let id: String = "dict-remove-at"
    static let name: String = "Remove At Key"
    var inputTrigger: InputTrigger? = InputTrigger()
    var inputValues: [InputValue] = [
        InputValue(id: "dict", name: "Dictionary", type: .dictionary(.unknown, .unknown)),
        InputValue(id: "key", name: "Key", type: .int)
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

