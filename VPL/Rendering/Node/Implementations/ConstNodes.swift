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
    
    let inputView: GenericInputView
    
    required init() {
        inputView = GenericInputView(frame: CGRect.zero, defaultValue: "0")
        
        self.setupConnections()
    }
    
    func assemble() -> String {
        return "(\(inputView.value))"
    }
}

class IntConstNode: DisplayableNode {
    static let shortcutCharacter: String? = "C"
    
    static let id: String = "int-const"
    static let name: String = "Integer Constant"
    var output: NodeOutput = .value(OutputValue(type: .int))
    var contentView: DisplayableNodeContentView? { return inputView }
    
    let inputView: DrawCanvasNodeView
    
    required init() {
        inputView = DrawCanvasNodeView(defaultValue: "0", inputType: .digits)
        
        self.setupConnections()
    }
    
    func assemble() -> String {
        let rawValue = inputView.value
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
    
    let inputView: DrawCanvasNodeView
    
    required init() {
        inputView = DrawCanvasNodeView(defaultValue: "", inputType: .alphanum)
        
        self.setupConnections()
    }
    
    func assemble() -> String {
        return "(\"\(inputView.value)\" as String)"
    }
}

