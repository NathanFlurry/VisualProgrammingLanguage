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
    let inputTrigger: NodeTrigger? = NodeTrigger.inputTrigger()
    let outputTrigger: NodeTrigger? = NodeTrigger.outputTrigger()
    let inputValues: [NodeValue] = [NodeValue(id: "value", type: .string)]
    
    required init() {
        self.setupConnections()
    }
    
    func assemble() -> String {
        let assembledInput = inputValues[0].assemble()
        return "print(\(assembledInput))\n" + assembleOutputTrigger()
    }
}
