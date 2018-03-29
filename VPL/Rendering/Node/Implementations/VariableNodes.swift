//
//  VariableNodes.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

class GetVariableNode: DisplayableNode {
    static let shortcutCharacter: String? = "V"
    
    static let id: String = "get variable"
    static let name: String = "Get Variable"
    var output: NodeOutput = .value(OutputValue(type: .any))
    var contentView: DisplayableNodeContentView? { return variablePicker }
    
    var variablePicker: ValueChooserView<VariableInstance?>!
    
    required init() {
        // Create the picker
        variablePicker = ValueChooserView<VariableInstance?>(
            defaultValue: nil,
            getValues: {
                return self.availableVariables.map { Optional.some($0) }
            },
            valueLabel: { v in v?.name ?? "No Variable" }
        )
        
        self.setupConnections()
    }
    
    func assemble() -> String {
        return "GET VARIALBLE"
    }
}

class SetVariableNode: DisplayableNode {
    static let shortcutCharacter: String? = "S"
    
    static let id: String = "set variable"
    static let name: String = "Set Variable"
    var inputTrigger: InputTrigger? = InputTrigger()
    var inputValues: [InputValue] = [ InputValue(id: "set value", name: "Set Value", type: .any) ]
    var output: NodeOutput = .triggers([
        OutputTrigger(exposedVariables: [ VariableInstance(name: "Test A", type: .int) ])
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
        let out = "\(variable.id) = \(assembledInput)\n"
        return out + assembleOutputTrigger()
    }
}

