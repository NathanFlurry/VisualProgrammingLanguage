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
    let outputValues: [NodeValue] = [NodeValue(id: "get value", type: .any)]
    var contentView: DisplayableNodeContentView? { return variablePicker }
    
    var variablePicker: ValueChooserView<VariableInstance?>!
    
    required init() {
        // Create the picker
        variablePicker = ValueChooserView<VariableInstance?>(
            defaultValue: nil,
            getValues: {
//                return self.availableVariables.map { Optional.some($0) }
                return []
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
    let inputTrigger: NodeTrigger? = NodeTrigger.inputTrigger()
    let outputTrigger: NodeTrigger? = NodeTrigger.outputTrigger(exposedVariables: [
        VariableInstance(name: "Test A", type: .int)
    ])
    let inputValues: [NodeValue] = [NodeValue(id: "set value", type: .any)]
    
    var variable: VariableInstance {
        return outputTrigger!.exposedVariables[0]
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

