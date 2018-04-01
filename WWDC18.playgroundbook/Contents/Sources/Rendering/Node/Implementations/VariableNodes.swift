//
//  VariableNodes.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

class DeclareVariableNode: DisplayableNode {
    static let shortcutCharacter: String? = "S"
    
    static let id: String = "declare variable"
    static let name: String = "Declare Variable"
    var inputTrigger: InputTrigger? = InputTrigger()
    var inputValues: [InputValue] = [ InputValue(id: "init value", name: "Init Value", type: .unknown) ]
    var output: NodeOutput = .triggers([
        OutputTrigger(exposedVariables: [ NodeVariable(name: "Variable", type: .unknown) ])
    ])
    
    var variable: NodeVariable {
        if case let .triggers(triggers) = output {
            return triggers[0].exposedVariables[0]
        } else {
            fatalError("Missing exposed variable.")
        }
    }
    
    required init() {
        self.setupConnections()
    }
    
    func assemble() -> String {
        var out = ""
        out !+= "var \(variable.id) = \(inputValues[0].assemble())"
        return out + assembleOutputTrigger()
    }
}

class SetVariableNode: DisplayableNode {
    static let shortcutCharacter: String? = "S"
    
    static let id: String = "set variable"
    static let name: String = "Set Variable"
    var inputTrigger: InputTrigger? = InputTrigger()
    var inputValues: [InputValue] = [ InputValue(id: "set value", name: "Set Value", type: .unknown) ]
    var inputVariables: [InputVariable] = [ InputVariable(id: "target", name: "Target", type: .unknown) ]
    var output: NodeOutput = .triggers([OutputTrigger()])
    
    required init() {
        self.setupConnections()
    }
    
    func assemble() -> String {
        let assembledInput = inputValues[0].assemble()
        let out = "\(inputVariables[0].target?.id ?? "NO SELECTED VARIABLE") = \(assembledInput)\n"
        return out + assembleOutputTrigger()
    }
}

class GetVariableNode: DisplayableNode {
    static let shortcutCharacter: String? = "V"
    
    static let id: String = "get variable"
    static let name: String = "Get Variable"
    var inputVariables: [InputVariable] = [ InputVariable(id: "target", name: "Target", type: .unknown) ]
    var output: NodeOutput = .value(OutputValue(type: .unknown))
    
    required init() {
        self.setupConnections()
    }
    
    func assemble() -> String {
        return "(\(inputVariables[0].target?.id ?? "NO SELECTED VARIABLE"))"
    }
}
