//
//  FunctionNode.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

class FunctionNode: DisplayableNode {
    static let shortcutCharacter: String? = "F"
    
    static let id: String = "function"
    static let name: String = "Function"
    let outputTrigger: NodeTrigger? = NodeTrigger.outputTrigger()
    
    var functionName: String
    
    required init() {
        self.functionName = "TEMP"
        
        self.setupConnections()
    }
    
    func assemble() -> String {
        var out = ""
        
        // Add the function declaration
        out += "func \(type(of: self).name) {\n"
        
        // Add the next
        out += outputTrigger?.target?.owner.assemble() ?? "// No body"
        
        // End the funciton
        out += "}"
        
        return out
    }
}
