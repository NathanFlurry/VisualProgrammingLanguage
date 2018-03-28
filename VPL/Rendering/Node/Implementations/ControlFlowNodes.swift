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
    let inputTrigger: NodeTrigger? = NodeTrigger.inputTrigger()
    let outputTrigger: NodeTrigger? = NodeTrigger.outputTrigger()
    let extraOutputTriggers: [NodeTrigger] = [NodeTrigger(id: "true"), NodeTrigger(id: "false")]
    let inputValues: [NodeValue] = [NodeValue(id: "condition", type: .bool)]
    
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

