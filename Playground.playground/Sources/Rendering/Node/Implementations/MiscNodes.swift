//
//  MiscNodes.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

class PrintNode: DisplayableNode {
    static let shortcutCharacter: String? = "P"
    
    static let id: String = "print"
    static let name: String = "Print"
    var inputTrigger: InputTrigger? = InputTrigger()
    var inputValues: [InputValue] = [InputValue(id: "value", name: "Value", type: .unknown)]
    var output: NodeOutput = .triggers([OutputTrigger()])
    
    required init() {
        self.setupConnections()
    }
    
    func assemble() -> String {
        var out = ""
        out !+= "print(\(inputValues[0].assemble()))"
        return out + assembleOutputTrigger()
    }
}

class SwapNode: DisplayableNode {
    static let id: String = "swap"
    static let name: String = "Swap"
    var inputTrigger: InputTrigger? = InputTrigger()
    var inputVariables: [InputVariable] = [InputVariable(id: "a", name: "A", type: .unknown), InputVariable(id: "b", name: "B", type: .unknown)]
    var output: NodeOutput = .triggers([OutputTrigger()])
    
    required init() {
        self.setupConnections()
    }
    
    func assemble() -> String {
        let tmpVariableId = NodeVariable.variableId
        var out = ""
        out !+= "let \(tmpVariableId) = \(inputVariables[0].target?.id ?? "NO VARIABLE SELECTED")"
        out !+= "\(inputVariables[0].target?.id ?? "NO VARIABLE SELECTED") = \(inputVariables[1].target?.id ?? "NO VARIABLE SELECTED")"
        out !+= "\(inputVariables[1].target?.id ?? "NO VARIABLE SELECTED") = \(tmpVariableId)"
        return out + assembleOutputTrigger()
    }
}
