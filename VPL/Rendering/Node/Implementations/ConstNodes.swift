//
//  ConstNodes.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

public class EvalConstNode: DisplayableNode {
    public static let shortcutCharacter: String? = "C"
    
    public static let id: String = "eval-const"
    public static let name: String = "Eval Constant"
    public var output: NodeOutput = .value(OutputValue(type: .unknown))
    public var contentView: DisplayableNodeContentView? { return inputView }
    
    var inputView: GenericInputView!
    
    public required init() {
        inputView = GenericInputView(node: self, fields: [
            GenericInputViewField(name: "Swift Code", defaultValue: "nil")
        ])
        
        self.setupConnections()
    }
}
public class IntConstNode: DisplayableNode {
    public static let shortcutCharacter: String? = "C"
    
    public static let id: String = "int-const"
    public static let name: String = "Integer Constant"
    public let output: NodeOutput = .value(OutputValue(type: .int))
    public var contentView: DisplayableNodeContentView? { return inputView }
    
    var inputView: DrawCanvasNodeView!
    
    public required init() {
        inputView = DrawCanvasNodeView(node: self, defaultValue: "0", inputType: .digits)
        
        self.setupConnections()
    }
}
public class StringConstNode: DisplayableNode {
    public static let shortcutCharacter: String? = "C"
    
    public static let id: String = "str-const"
    public static let name: String = "String Constant"
    public let output: NodeOutput = .value(OutputValue(type: .string))
    public var contentView: DisplayableNodeContentView? { return inputView }
    
    var inputView: DrawCanvasNodeView!
    
    public required init() {
        inputView = DrawCanvasNodeView(node: self, defaultValue: "", inputType: .alphanum)
        
        self.setupConnections()
    }
}

