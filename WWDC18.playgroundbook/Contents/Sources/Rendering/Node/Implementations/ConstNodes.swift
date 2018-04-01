//
//  ConstNodes.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

class EvalConstNode: DisplayableNode {
    static let shortcutCharacter: String? = "C"
    
    static let id: String = "eval-const"
    static let name: String = "Eval Constant"
    var output: NodeOutput = .value(OutputValue(type: .unknown))
    var contentView: DisplayableNodeContentView? { return inputView }
    
    var inputView: GenericInputView!
    
    required init() {
        inputView = GenericInputView(node: self, fields: [
            GenericInputViewField(name: "Swift Code", defaultValue: "nil")
        ])
        
        self.setupConnections()
    }
    
    func assemble() -> String {
        return "(\(inputView.fields[0].value))"
    }
}

class IntConstNode: DisplayableNode {
    static let shortcutCharacter: String? = "C"
    
    static let id: String = "int-const"
    static let name: String = "Integer Constant"
    var output: NodeOutput = .value(OutputValue(type: .int))
    var contentView: DisplayableNodeContentView? { return inputView }
    
    var inputView: DrawCanvasNodeView!
    
    required init() {
        inputView = DrawCanvasNodeView(node: self, defaultValue: "0", inputType: .digits)
        
        self.setupConnections()
    }
    
    func assemble() -> String {
        var rawValue = inputView.value
        rawValue = rawValue.split(separator: ".").first.map { String($0) } ?? "" // Remove decimal
        if rawValue.count == 0 {
            return "(0 as Int)"
        } else if Int(rawValue) != nil {
            return "(\(rawValue) as Int)"
        } else {
            return "FAILED TO CONVERT INT"
        }
    }
}

class StringConstNode: DisplayableNode {
    static let shortcutCharacter: String? = "C"
    
    static let id: String = "str-const"
    static let name: String = "String Constant"
    var output: NodeOutput = .value(OutputValue(type: .string))
    var contentView: DisplayableNodeContentView? { return inputView }
    
    var inputView: DrawCanvasNodeView!
    
    required init() {
        inputView = DrawCanvasNodeView(node: self, defaultValue: "", inputType: .alphanum)
        
        self.setupConnections()
    }
    
    func assemble() -> String {
        var escapedValue = inputView.value
        escapedValue = escapedValue.replacingOccurrences(of: "\\", with: "\\\\")
        escapedValue = escapedValue.replacingOccurrences(of: "\"", with: "\\\"")
        return "(\"\(escapedValue)\" as String)"
    }
}

