//
//  NodeVariable.swift
//  VPL
//
//  Created by Nathan Flurry on 3/29/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import Foundation

class NodeVariable {
    /// The trigger that owns this variable.
    weak var owner: OutputTrigger!
    
    /// A UUID that represents this variable in the code itself.
    let id: String
    
    /// Label for human readability.
    let name: String
    
    /// The type of variable.
    let type: ValueType
    
    init(name: String, type: ValueType) {
        self.id = String(format: "v%06x", Int(arc4random() % 65535))
        self.name = name
        self.type = type
    }
}
