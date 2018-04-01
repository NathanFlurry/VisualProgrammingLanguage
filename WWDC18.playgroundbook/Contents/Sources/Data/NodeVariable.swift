//
//  NodeVariable.swift
//  VPL
//
//  Created by Nathan Flurry on 3/29/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import Foundation

public class NodeVariable {
    static var variableId: String { return String(format: "v%06x", Int(arc4random())) }
    
    /// The trigger that owns this variable.
    weak var owner: OutputTrigger!
    
    /// A UUID that represents this variable in the code itself.
    public let id: String
    
    /// Label for human readability.
    public let name: String
    
    /// The type of variable.
    public let type: ValueType
    
    public init(name: String, type: ValueType) {
        self.id = NodeVariable.variableId
        self.name = name
        self.type = type
    }
}

public final class InputVariable {
    /// The node that owns this value.
    weak var owner: Node!
    
    /// An identifier for this value.
    public let id: String
    
    /// Name for this value.
    public let name: String
    
    /// The type of value this holds.
    public let type: ValueType
    
    /// The connected value.
    public private(set) var target: NodeVariable?
    
    public init(id: String, name: String, type: ValueType) {
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
    public func assemble() -> String {
        return target?.id ?? "NO VARIABLE"
    }
}
