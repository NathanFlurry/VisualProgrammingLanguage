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
    
    public enum Target {
        case value(OutputValue)
        case variable(NodeVariable)
        case constant(Value)
        
        /// If this target can be connected to another output target.
        public func isConnectable() -> Bool {
            if case .constant(_) = self {
                return true
            } else {
                return false
            }
        }
    }
    
    /// The node that owns this value.
    public internal(set) weak var owner: Node!
    
    /// An identifier for this value.
    public let id: ID = UUID()
    
    /// Name for this value.
    public let name: String
    
    /// The type of value this holds.
    public let type: ValueType
    
    /// The default value for this socket.
    public let defaultValue: Value
    
    /// The connected value.
    public private(set) var target: Target
    
    public init(name: String, type: ValueType, defaultValue: Value? = nil) {
        assert(defaultValue?.conforms(to: type) ?? true)
        self.name = name
        self.type = type
        self.defaultValue = defaultValue ?? type.defaultValue
        self.target = Target.constant(self.defaultValue)
    }
    
    /// Determines if two values can be connected.
    public func canConnect(to newTarget: OutputValue) -> Bool {
        return newTarget.canConnect(to: self)
    }
    
    /// Determines if this value can be connected to the target trigger.
    public func canConnect(to newTarget: NodeVariable) -> Bool {
        return newTarget.type == type && owner.availableVariables.contains { $0 === newTarget }
    }
    
    /// Connects this value to another value.
    public func connect(to newTarget: OutputValue) {
        // Set the new target
        target = .value(newTarget)
        
        // Connect the other node
        if newTarget.target !== self {
            newTarget.connect(to: self)
        }
    }
    
    /// Connects this value to another variable.
    public func connect(to newTarget: NodeVariable) {
        // Set the new target
        target = .variable(newTarget)
    }
    
    /// Sets the value to a constant.
    public func set(const value: Value) {
        assert(value.conforms(to: type))
        
        // Set the new constant
        target = .constant(value)
    }
    
    /// Disconnects any targets this is connected to.
    public func reset() {
        // Set the new target
        let tmpTarget = target
        target = Target.constant(defaultValue)
        
        // Reset the other value's connection if needed
        if case let .value(value) = tmpTarget {
            if value.target != nil {
                value.reset()
            }
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
        return type == newTarget.type && owner !== newTarget.owner && target == nil && newTarget.target.isConnectable()
    }
    
    /// Connects this value to another value.
    public func connect(to newTarget: InputValue) {
        // Set the new target
        target = newTarget
        
        // Connect the other node
        if newTarget.target.isConnectable() {
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
