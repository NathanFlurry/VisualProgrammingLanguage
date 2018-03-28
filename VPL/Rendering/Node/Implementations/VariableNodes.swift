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
    
    let id: String = "get variable"
    let name = "Get Variable"
    let outputValues: [NodeValue] = [NodeValue(id: "get value", type: .any)]
    
    var variable: VariableInstance
    
    required init() {
        // TODO: Point `variable` to the correct reference
        self.variable = VariableInstance(id: "TEMP", type: .any)
        
        self.setupConnections()
    }
    
    func assemble() -> String {
        return variable.id
    }
}

class SetVariableNode: DisplayableNode {
    static let shortcutCharacter: String? = "S"
    
    let id: String = "set variable"
    let name: String = "Set Variable"
    let inputTrigger: NodeTrigger? = NodeTrigger.inputTrigger()
    let outputTrigger: NodeTrigger? = NodeTrigger.outputTrigger()
    let inputValues: [NodeValue] = [NodeValue(id: "set value", type: .any)]
    
    var variable: VariableInstance
    
    required init() {
        // TODO: Point `variable` to the correct reference
        self.variable = VariableInstance(id: "TEMP", type: .any)
        
        self.setupConnections()
    }
    
    func assemble() -> String {
        let assembledInput = inputValues[0].assemble()
        let out = "\(variable.id) = \(assembledInput)\n"
        return out + assembleOutputTrigger()
    }
}

