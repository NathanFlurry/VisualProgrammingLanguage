//
//  NodeValue.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import Foundation

final class InputValue {
    /// The node that owns this value.
    var owner: Node!
    
    /// An identifier for this value.
    var id: String
    
    /// The type of value this holds.
    let type: ValueType
    
    /// The connected value.
    private(set) var target: OutputValue?
    
    init(id: String, type: ValueType) {
        self.id = id
        self.type = type
    }
    
    /// Determines if two values can be connected.
    func canConnect(to newTarget: OutputValue) -> Bool {
        return newTarget.canConnect(to: self)
    }
    
    /// Connects this value to another value.
    func connect(to newTarget: OutputValue) {
        // Set the new target
        target = newTarget
        
        // Connect the other node
        if newTarget.target !== self {
            newTarget.connect(to: self)
        }
    }
    
    /// Disconnects any targets this is connected to.
    func reset() {
        // Remove the target
        let tmpTarget = target
        target = nil
        
        // Remove other target if needed
        if tmpTarget?.target != nil {
            tmpTarget?.reset()
        }
    }
    
    /// Assembles the code.
    func assemble() -> String {
        return target?.owner.assemble() ?? ""
    }
}

final class OutputValue {
    /// The node that owns this value
    var owner: Node!
    
    /// The type of value this holds.
    let type: ValueType
    
    /// The connected value.
    private(set) var target: InputValue?
    
    init(type: ValueType) {
        self.type = type
    }
    
    /// Determines if two values can be connected.
    func canConnect(to newTarget: InputValue) -> Bool {
        return type.canCast(to: newTarget.type) && owner !== newTarget.owner && target == nil && newTarget.target == nil
    }
    
    /// Connects this value to another value.
    func connect(to newTarget: InputValue) {
        // Set the new target
        target = newTarget
        
        // Connect the other node
        if newTarget.target !== self {
            newTarget.connect(to: self)
        }
    }
    
    /// Disconnects any targets this is connected to.
    func reset() {
        // Remove the target
        let tmpTarget = target
        target = nil
        
        // Remove other target if needed
        if tmpTarget?.target != nil {
            tmpTarget?.reset()
        }
    }
}
