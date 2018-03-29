//
//  ControlFlowNodes.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

class IfNode: DisplayableNode {
    static let shortcutCharacter: String? = "I"
    
    static let id: String = "if"
    static let name: String = "If"
    var inputTrigger: InputTrigger? = InputTrigger()
    var inputValues: [InputValue] = [InputValue(id: "condition", name: "Condition", type: .bool)]
    var output: NodeOutput = .triggers([OutputTrigger(), OutputTrigger(id: "true", name: "True"), OutputTrigger(id: "false", name: "False")])
    
    required init() {
        self.setupConnections()
    }
    
    func assemble() -> String {
        var out = ""
        out !+= "if \(inputValues[0].assemble()) {"
        out !!+= assembleOutputTrigger(id: "true")
        out !+= "} else {"
        out !!+= assembleOutputTrigger(id: "false")
        out !+= "}"
        return out + assembleOutputTrigger()
    }
}

class ForLoopNode: DisplayableNode {
    static let shortcutCharacter: String? = "F"
    
    static let id: String = "for"
    static var name: String = "For Loop"
    var inputTrigger: InputTrigger? = InputTrigger()
    var inputValues: [InputValue] = [InputValue(id: "from", name: "From", type: .int), InputValue(id: "to", name: "To", type: .int)]
    var output: NodeOutput = .triggers([
        OutputTrigger(),
        OutputTrigger(id: "loop", name: "Loop", exposedVariables: [VariableInstance(name: "Index", type: .int)])
    ])
    
    var indexVariable: VariableInstance {
        if case let .triggers(triggers) = output {
            return triggers[1].exposedVariables[0]
        } else {
            fatalError("Missing exposed variable.")
        }
    }
    
    required init() {
        self.setupConnections()
    }
    
    func assemble() -> String {
        var out = ""
        out !+= "for \(indexVariable.id) in (\(inputValues[0].assemble()))..<(\(inputValues[1].assemble())) {"
        out !!+= assembleOutputTrigger(id: "loop")
        out !+= "}"
        return out + assembleOutputTrigger()
    }
    
    
}
