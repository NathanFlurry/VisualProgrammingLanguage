//
//  VariableNodes.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

class DeclareVariableNode: DisplayableNode {
    static let shortcutCharacter: String? = "D"
    
    static let id: String = "declare variable"
    static let name: String = "Declare Variable"
    var inputTrigger: InputTrigger? = InputTrigger()
    var inputValues: [InputValue] = [ InputValue(id: "init value", name: "Init Value", type: .unknown) ]
    var output: NodeOutput = .triggers([
        OutputTrigger(exposedVariables: [ VariableInstance(name: "Variable", type: .unknown) ])
    ])
    
    var variable: VariableInstance {
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
        let assembledInput = inputValues[0].assemble()
        let out = "var \(variable.id) = \(assembledInput)\n"
        return out + assembleOutputTrigger()
    }
}

class SetVariableNode: DisplayableNode {
    static let shortcutCharacter: String? = "S"
    
    static let id: String = "set variable"
    static let name: String = "Set Variable"
    var inputTrigger: InputTrigger? = InputTrigger()
    var inputValues: [InputValue] = [ InputValue(id: "set value", name: "Set Value", type: .unknown) ]
    var output: NodeOutput = .triggers([OutputTrigger()])
    var contentView: DisplayableNodeContentView? { return variableChooser }
    
    var variableChooser: VariableChooserView!
    
    required init() {
        variableChooser = VariableChooserView(owner: self)
        
        self.setupConnections()
    }
    
    func assemble() -> String {
        let assembledInput = inputValues[0].assemble()
        let out = "\(variableChooser.value?.id ?? "NO SELECTED VARIABLE") = \(assembledInput)\n"
        return out + assembleOutputTrigger()
    }
}

class GetVariableNode: DisplayableNode {
    static let shortcutCharacter: String? = "V"
    
    static let id: String = "get variable"
    static let name: String = "Get Variable"
    var output: NodeOutput = .value(OutputValue(type: .unknown))
    var contentView: DisplayableNodeContentView? { return variableChooser }
    
    var variableChooser: VariableChooserView!
    
    required init() {
        variableChooser = VariableChooserView(owner: self)
        
        self.setupConnections()
    }
    
    func assemble() -> String {
        return "(\(variableChooser.value?.id ?? "NO SELECTED VARIABLE"))"
    }
}
