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
    var inputValues: [InputValue] = [InputValue(id: "condition", type: .bool)]
    var output: NodeOutput = .triggers([OutputTrigger(), OutputTrigger(id: "true"), OutputTrigger(id: "false")])
    
    required init() {
        self.setupConnections()
    }
    
    func assemble() -> String {
        let assembledInput = inputValues[0].assemble()
        var out = "if (\(assembledInput)) {\n"
        out += extraOutputTriggers[0].assemble() + "\n"
        out += "} else {"
        out += extraOutputTriggers[1].assemble() + "\n"
        out += "}\n"
        return out + assembleOutputTrigger()
    }
}

