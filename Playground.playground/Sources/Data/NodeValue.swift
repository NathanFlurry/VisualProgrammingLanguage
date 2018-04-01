//
//  NodeValue.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import Foundation

public final class InputValue {
    /// The node that owns this value.
    weak var owner: Node!
    
    /// An identifier for this value.
    public let id: String
    
    /// Name for this value.
    public let name: String
    
    /// The type of value this holds.
    public let type: ValueType
    
    /// The connected value.
    public private(set) var target: OutputValue?
    
    public init(id: String, name: String, type: ValueType) {
        self.id = id
        self.name = name
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
    public func assemble() -> String {
        return target?.owner.assemble() ?? ""
    }
}

public final class OutputValue {
    /// The node that owns this value
    weak var owner: Node!
    
    /// The type of value this holds.
    public let type: ValueType
    
    /// The connected value.
    public private(set) var target: InputValue?
    
    public init(type: ValueType) {
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
