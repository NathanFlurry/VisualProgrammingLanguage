//
//  ControlFlowNodes.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit
public class IfNode: DisplayableNode {
    public static let shortcutCharacter: String? = "I"
    
    public static let id: String = "if"
    public static let name: String = "If"
    public let inputTrigger: InputTrigger? = InputTrigger()
    public let inputValues: [InputValue] = [InputValue(id: "condition", name: "Condition", type: .bool)]
    public let output: NodeOutput = .triggers([OutputTrigger(), OutputTrigger(id: "true", name: "True"), OutputTrigger(id: "false", name: "False")])
    
    public required init() {
        self.setupConnections()
    }
    
    public func assemble() -> String {
        var out = ""
        out !+= "if \(inputValues[0].assemble()) {"
        out !!+= assembleOutputTrigger(id: "true")
        out !+= "} else {"
        out !!+= assembleOutputTrigger(id: "false")
        out !+= "}"
        return out + assembleOutputTrigger()
    }
}
public class ForLoopNode: DisplayableNode {
    public static let shortcutCharacter: String? = "F"
    
    public static let id: String = "for"
    public static let name: String = "For Loop"
    public let inputTrigger: InputTrigger? = InputTrigger()
    public let inputValues: [InputValue] = [InputValue(id: "from", name: "From", type: .int), InputValue(id: "to", name: "To", type: .int)]
    public let output: NodeOutput = .triggers([
        OutputTrigger(),
        OutputTrigger(id: "loop", name: "Loop", exposedVariables: [NodeVariable(name: "Index", type: .int)])
    ])
    
    var indexVariable: NodeVariable {
        if case let .triggers(triggers) = output {
            return triggers[1].exposedVariables[0]
        } else {
            fatalError("Missing exposed variable.")
        }
    }
    
    public required init() {
        self.setupConnections()
    }
    
    public func assemble() -> String {
        var out = ""
        out !+= "for \(indexVariable.id) in (\(inputValues[0].assemble()))..<(\(inputValues[1].assemble())) {"
        out !!+= assembleOutputTrigger(id: "loop")
        out !+= "}"
        return out + assembleOutputTrigger()
    }
    
    
}
