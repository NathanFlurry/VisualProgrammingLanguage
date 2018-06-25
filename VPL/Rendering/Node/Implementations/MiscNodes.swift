//
//  MiscNodes.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit
public class PrintNode: DisplayableNode {
    public static let shortcutCharacter: String? = "P"

    public static let id: String = "print"
    public static let name: String = "Print"
    public let inputTrigger: InputTrigger? = InputTrigger()
    public let inputValues: [InputValue] = [InputValue(id: "value", name: "Value", type: .unknown)]
    public let output: NodeOutput = .triggers([OutputTrigger()])

    public required init() {
        self.setupConnections()
    }

    public func assemble() -> String {
        var out = ""
        out !+= "print(\(inputValues[0].assemble()))"
        return out + assembleOutputTrigger()
    }
}
public class SwapNode: DisplayableNode {
    public static let id: String = "swap"
    public static let name: String = "Swap"
    public let inputTrigger: InputTrigger? = InputTrigger()
    public let inputVariables: [InputVariable] = [InputVariable(id: "a", name: "A", type: .unknown), InputVariable(id: "b", name: "B", type: .unknown)]
    public let output: NodeOutput = .triggers([OutputTrigger()])

    public required init() {
        self.setupConnections()
    }

    public func assemble() -> String {
        let tmpVariableId = NodeVariable.variableId
        var out = ""
        out !+= "let \(tmpVariableId) = \(inputVariables[0].target?.id ?? "NO VARIABLE SELECTED")"
        out !+= "\(inputVariables[0].target?.id ?? "NO VARIABLE SELECTED") = \(inputVariables[1].target?.id ?? "NO VARIABLE SELECTED")"
        out !+= "\(inputVariables[1].target?.id ?? "NO VARIABLE SELECTED") = \(tmpVariableId)"
        return out + assembleOutputTrigger()
    }
}

// DEMO NODES:
//public class SplitStringNode: DisplayableNode {
//    public static let shortcutCharacter: String? = "T"
//
//    public static let id: String = "split-string"
//    public static let name: String = "Split String"
//    public var inputValues: [InputValue] = [
//        InputValue(id: "input", name: "Input", type: .string),
//        InputValue(id: "separator", name: "Separator", type: .string)
//    ]
//    public let output: NodeOutput = .value(OutputValue(type: .array(.string)))
//
//    public required init() {
//        self.setupConnections()
//    }
//
//    public func assemble() -> String {
//        let assembledInput = inputValues[0].assemble()
//        let assembledSeparator = inputValues[1].assemble()
//        return "\(assembledInput).components(separatedBy: \(assembledSeparator))"
//    }
//}
//
//public class RepeatStringNode: DisplayableNode {
//    public static let shortcutCharacter: String? = "R"
//
//    public static let id: String = "repeat-string"
//    public static let name: String = "Repeat String"
//    public var inputValues: [InputValue] = [
//        InputValue(id: "input", name: "Input", type: .string)
//    ]
//    public let output: NodeOutput = .value(OutputValue(type: .string))
//
//    public required init() {
//        self.setupConnections()
//    }
//
//    public func assemble() -> String {
//        let assembledInput = inputValues[0].assemble()
//        return "(\(assembledInput) + \(assembledInput))"
//    }
//}
//
//public class DoCatchNode: DisplayableNode {
//    public static let shortcutCharacter: String? = "D"
//
//    public static let id: String = "do-catch"
//    public static let name: String = "Do Catch"
//    public var inputTrigger: InputTrigger? = InputTrigger()
//    public let output: NodeOutput = .triggers([
//        OutputTrigger(),
//        OutputTrigger(id: "do", name: "Do"),
//        OutputTrigger(id: "catch", name: "Catch", exposedVariables: [NodeVariable(name: "Error", type: .string)])
//    ])
//
//    public required init() {
//        self.setupConnections()
//    }
//
//    public func assemble() -> String {
//        // Get the variable's unique ID
//        let tempErrorVariable = NodeVariable.variableId // Generate unique ID
//        let errorVariable = output.triggers![2].id
//
//        // Assemble the code
//        var out = ""
//        out !+= "do {"
//        out !!+= assembleOutputTrigger(id: "do")
//        out !+= "} catch let \(tempErrorVariable) {"
//        out !!+= "let \(errorVariable) = \(tempErrorVariable).localizedDescription"
//        out !!+= assembleOutputTrigger(id: "catch")
//        out !+= "}"
//
//        // Return the code alonside the rest of the assembled program; passing
//        // nothing into `assembleOutputTrigger` makes it automatically
//        // assemble the next node.
//        return out + assembleOutputTrigger()
//    }
//}
//
//public class RepeatWhileNode: DisplayableNode {
//    public static let shortcutCharacter: String? = "R"
//
//    public static let id: String = "repeat-while"
//    public static let name: String = "Repeat While"
//    public var inputTrigger: InputTrigger? = InputTrigger()
//    public var inputValues: [InputValue] = [InputValue(id: "condition", name: "Condition", type: .bool)]
//    public let output: NodeOutput = .triggers([
//        OutputTrigger(),
//        OutputTrigger(id: "loop", name: "Loop")
//    ])
//
//    public required init() {
//        self.setupConnections()
//    }
//
//    public func assemble() -> String {
//        // Assemble the condition
//        let assembledCondition = inputValues[0].assemble()
//
//        // Assemble the code
//        var out = ""
//        out !+= "repeat {"
//        out !!+= assembleOutputTrigger(id: "loop")
//        out !+= "} while (\(assembledCondition))"
//
//        // Return the code alonside the rest of the assembled program
//        return out + assembleOutputTrigger()
//    }
//}

