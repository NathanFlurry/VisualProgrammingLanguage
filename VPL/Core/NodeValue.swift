//
//  NodeValue.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import Foundation

public final class InputValue {
    public typealias ID = UUID
    
    /// The node that owns this value.
    public internal(set) weak var owner: Node!
    
    /// An identifier for this value.
    public let id: ID = UUID()
    
    /// Name for this value.
    public let name: String
    
    /// The type of value this holds.
    public let type: ValueType
    
    /// The connected value.
    public private(set) var target: OutputValue?
    
    public init(name: String, type: ValueType) {
        self.name = name
        self.type = type
    }
    
    /// Determines if two values can be connected.
    public func canConnect(to newTarget: OutputValue) -> Bool {
        return newTarget.canConnect(to: self)
    }
    
    /// Connects this value to another value.
    public func connect(to newTarget: OutputValue) {
        // Set the new target
        target = newTarget
        
        // Connect the other node
        if newTarget.target !== self {
            newTarget.connect(to: self)
        }
    }
    
    /// Disconnects any targets this is connected to.
    public func reset() {
        // Remove the target
        let tmpTarget = target
        target = nil
        
        // Remove other target if needed
        if tmpTarget?.target != nil {
            tmpTarget?.reset()
        }
    }
}

public final class OutputValue {
    public typealias ID = UUID
    
    /// The node that owns this value
    public internal(set) weak var owner: Node!
    
    /// An identifier for this value.
    public let id: ID = UUID()
    
    /// The type of value this holds.
    public let type: ValueType
    
    /// The connected value.
    public private(set) var target: InputValue?
    
    public init(type: ValueType) {
        self.type = type
    }
    
    /// Determines if two values can be connected.
    public func canConnect(to newTarget: InputValue) -> Bool {
        return type == newTarget.type && owner !== newTarget.owner && target == nil && newTarget.target == nil
    }
    
    /// Connects this value to another value.
    public func connect(to newTarget: InputValue) {
        // Set the new target
        target = newTarget
        
        // Connect the other node
        if newTarget.target !== self {
            newTarget.connect(to: self)
        }
    }
    
    /// Disconnects any targets this is connected to.
    public func reset() {
        // Remove the target
        let tmpTarget = target
        target = nil
        
        // Remove other target if needed
        if tmpTarget?.target != nil {
            tmpTarget?.reset()
        }
    }
}
