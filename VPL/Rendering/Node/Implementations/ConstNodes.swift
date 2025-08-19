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

    public func assemble() -> String {
        return "(\(inputView.fields[0].value))"
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

    public func assemble() -> String {
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

    public func assemble() -> String {
        var escapedValue = inputView.value
        escapedValue = escapedValue.replacingOccurrences(of: "\\", with: "\\\\")
        escapedValue = escapedValue.replacingOccurrences(of: "\"", with: "\\\"")
        return "(\"\(escapedValue)\" as String)"
    }
}

