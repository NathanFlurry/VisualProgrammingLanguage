//
//  ArrayNodes.swift
//  VPL
//
//  Created by Nathan Flurry on 3/30/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

public class ArrayCreateNode: DisplayableNode {
    public static let shortcutCharacter: String? = "A"

    public static let id: String = "array-create"
    public static let name: String = "Create Array"
    public let output: NodeOutput = .value(OutputValue(type: .array(.unknown)))
    public var contentView: DisplayableNodeContentView? { return input }

    var input: GenericInputView!

    public required init() {
        input = GenericInputView(node: self, fields: [
            GenericInputViewField(name: "Value Type", defaultValue: "Int")
        ])

        self.setupConnections()
    }

    public func assemble() -> String {
        return "[\(input.fields[0].value)]()"
    }
}
public class ArrayAppendNode: DisplayableNode {
    public static let shortcutCharacter: String? = "A"

    public static let id: String = "array-appent"
    public static let name: String = "Append to Array"
    public let inputTrigger: InputTrigger? = InputTrigger()
    public let inputValues: [InputValue] = [
        InputValue(id: "array", name: "Array", type: .array(.unknown)),
        InputValue(id: "value", name: "Value", type: .unknown)
    ]
    public let output: NodeOutput = .triggers([OutputTrigger()])

    public required init() {
        self.setupConnections()
    }

    public func assemble() -> String {
        var out = ""
        out !+= "\(inputValues[0].assemble()).append(\(inputValues[1].assemble()))"
        return out + assembleOutputTrigger()
    }
}
public class ArraySetAtNode: DisplayableNode {
    public static let shortcutCharacter: String? = "A"

    public static let id: String = "array-set-at"
    public static let name: String = "Set At Index"
    public let inputTrigger: InputTrigger? = InputTrigger()
    public let inputValues: [InputValue] = [
        InputValue(id: "array", name: "Array", type: .array(.unknown)),
        InputValue(id: "index", name: "Index", type: .int),
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
public class ArrayGetAtNode: DisplayableNode {
    public static let shortcutCharacter: String? = "A"

    public static let id: String = "array-get-at"
    public static let name: String = "Get At Index"
    public let inputValues: [InputValue] = [
        InputValue(id: "array", name: "Array", type: .array(.unknown)),
        InputValue(id: "index", name: "Index", type: .int)
    ]
    public let output: NodeOutput = .value(OutputValue(type: .unknown))

    public required init() {
        self.setupConnections()
    }

    public func assemble() -> String {
        return "\(inputValues[0].assemble())[\(inputValues[1].assemble())]"
    }
}
public class ArrayRemoveAtNode: DisplayableNode {
    public static let shortcutCharacter: String? = "A"

    public static let id: String = "array-remove-at"
    public static let name: String = "Remove At Index"
    public let inputTrigger: InputTrigger? = InputTrigger()
    public let inputValues: [InputValue] = [
        InputValue(id: "array", name: "Array", type: .array(.unknown)),
        InputValue(id: "index", name: "Index", type: .int)
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
public class ArrayCountNode: DisplayableNode {
    public static let shortcutCharacter: String? = "A"

    public static let id: String = "array-count"
    public static let name: String = "Value Count"
    public let inputValues: [InputValue] = [InputValue(id: "array", name: "Array", type: .array(.unknown))]
    public let output: NodeOutput = .value(OutputValue(type: .int))

    public required init() {
        self.setupConnections()
    }

    public func assemble() -> String {
        return "\(inputValues[0].assemble()).count"
    }
}
