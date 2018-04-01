//
//  DictionaryNodes.swift
//  VPL
//
//  Created by Nathan Flurry on 3/30/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit
public class DictionaryCreateNode: DisplayableNode {
    public static let shortcutCharacter: String? = "D"
    
    public static let id: String = "dict-create"
    public static let name: String = "Create Dictionary"
    public let output: NodeOutput = .value(OutputValue(type: .dictionary(.unknown, .unknown)))
    public var contentView: DisplayableNodeContentView? { return input }
    
    var input: GenericInputView!
    
    public required init() {
        input = GenericInputView(node: self, fields: [
            GenericInputViewField(name: "Key Type", defaultValue: "String"),
            GenericInputViewField(name: "Value Type", defaultValue: "Int")
        ])
        
        self.setupConnections()
    }
    
    public func assemble() -> String {
        return "[\(input.fields[0].value) : \(input.fields[1].value)]()"
    }
}
public class DictionarySetAtNode: DisplayableNode {
    public static let shortcutCharacter: String? = "D"
    
    public static let id: String = "dict-set-at"
    public static let name: String = "Set At Key"
    public let inputTrigger: InputTrigger? = InputTrigger()
    public let inputValues: [InputValue] = [
        InputValue(id: "dict", name: "Dictionary", type: .dictionary(.unknown, .unknown)),
        InputValue(id: "key", name: "Key", type: .unknown),
        InputValue(id: "value", name: "Value", type: .unknown)
    ]
    public let output: NodeOutput = .triggers([OutputTrigger()])
    
    public required init() {
        self.setupConnections()
    }
    
    public func assemble() -> String {
        var out = ""
        out !+= "\(inputValues[0].assemble())[\(inputValues[1].assemble())] = \(inputValues[2].assemble())"
        return out + assembleOutputTrigger()
    }
}
public class DictionaryGetAtNode: DisplayableNode {
    public static let shortcutCharacter: String? = "D"
    
    public static let id: String = "dict-get-at"
    public static let name: String = "Get At Key"
    public let inputValues: [InputValue] = [
        InputValue(id: "dict", name: "Dictionary", type: .dictionary(.unknown, .unknown)),
        InputValue(id: "key", name: "Key", type: .unknown)
    ]
    public let output: NodeOutput = .value(OutputValue(type: .unknown))
    
    public required init() {
        self.setupConnections()
    }
    
    public func assemble() -> String {
        return "\(inputValues[0].assemble())[\(inputValues[1].assemble())]!"
    }
}
public class DictionaryContainsKeyNode: DisplayableNode {
    public static let shortcutCharacter: String? = "D"
    
    public static let id: String = "dict-get-at"
    public static let name: String = "Contains Key"
    public let inputValues: [InputValue] = [
        InputValue(id: "dict", name: "Dictionary", type: .dictionary(.unknown, .unknown)),
        InputValue(id: "key", name: "Key", type: .unknown)
    ]
    public let output: NodeOutput = .value(OutputValue(type: .bool))
    
    public required init() {
        self.setupConnections()
    }
    
    public func assemble() -> String {
        return "(\(inputValues[0].assemble())[\(inputValues[1].assemble())] != nil)"
    }
}
public class DictionaryRemoveAtNode: DisplayableNode {
    public static let shortcutCharacter: String? = "D"
    
    public static let id: String = "dict-remove-at"
    public static let name: String = "Remove At Key"
    public let inputTrigger: InputTrigger? = InputTrigger()
    public let inputValues: [InputValue] = [
        InputValue(id: "dict", name: "Dictionary", type: .dictionary(.unknown, .unknown)),
        InputValue(id: "key", name: "Key", type: .int)
    ]
    public let output: NodeOutput = .triggers([OutputTrigger()])
    
    public required init() {
        self.setupConnections()
    }
    
    public func assemble() -> String {
        var out = ""
        out !+= "\(inputValues[0].assemble()).remove(at: \(inputValues[1].assemble()))"
        return out + assembleOutputTrigger()
    }
}

