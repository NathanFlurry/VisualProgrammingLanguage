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

final class InputVariable {
    /// The node that owns this value.
    weak var owner: Node!
    
    /// An identifier for this value.
    var id: String
    
    /// Name for this value.
    var name: String
    
    /// The type of value this holds.
    let type: ValueType
    
    /// The connected value.
    private(set) var target: NodeVariable?
    
    init(id: String, name: String, type: ValueType) {
        self.id = id
        self.name = name
        self.type = type
    }
    
    /// Determines if two values can be connected.
    func canConnect(to newTarget: NodeVariable) -> Bool {
        /// Make sure the node can see the variable.
        return newTarget.type.canCast(to: type) && owner.availableVariables.contains { $0 === newTarget }
    }
    
    /// Connects this value to another value.
    func connect(to newTarget: NodeVariable) {
        // Set the new target
        target = newTarget
    }
    
    /// Disconnects any targets this is connected to.
    func reset() {
        // Remove the target
        target = nil
    }
    
    /// Assembles the code.
    func assemble() -> String {
        return target?.id ?? "NO VARIABLE"
    }
}
