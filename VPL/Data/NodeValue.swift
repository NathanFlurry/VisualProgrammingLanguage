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
        assert(canConnect(to: newTarget))
        
        // Set the new target
        target = newTarget
        
        // Connect if needed
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

final class OutputValue {
    /// The node that owns this value
    var owner: Node!
    
    /// The type of value this holds.
    let type: ValueType
    
    /// The connected value.
    private(set) var target: InputValue?
    
    /// Variables availables to any other nodes further along the control flow.
    var exposedVariables: [VariableInstance]
    
    init(type: ValueType) {
        self.type = type
    }
    
    /// Determines if two values can be connected.
    func canConnect(to newTarget: InputValue) -> Bool {
        return type.canCast(to: newTarget.type) && owner !== newTarget.owner && target == nil && newTarget.target == nil
    }
    
    /// Connects this value to another value.
    func connect(to newTarget: InputValue) {
        assert(canConnect(to: newTarget))
        
        // Set the new target
        target = newTarget
        
        // Connect if needed
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

final class NodeValue {
    weak var owner: Node!
    let id: String
    let type: ValueType
    private(set) var target: NodeValue? = nil
    
    init(id: String, type: ValueType) {
        self.id = id
        self.type = type
    }
    
    /// If this value can be connected to another value.
    func canConnect(to target: NodeValue) -> Bool {
        // Check casting
        var validCast: Bool
        switch location {
        case .input:
            validCast = target.type.canCast(to: type)
        case .output:
            validCast = type.canCast(to: target.type)
        }
        
        // Check everything else
        return owner !== target.owner && target !== self && location.compliments(location: target.location) && target.target == nil && validCast
    }
    
    /// Resets the socket so there is no target.
    func reset() {
        target?.target = nil
        target = nil
    }
    
    func connect(to target: NodeValue) {
        // Assert that a target is not already set
        assert(self.target == nil)
        assert(target.target == nil)
        
        // Assert that inputs are connecting to outputs or vice versa
        if owner.inputValues.contains(where: { $0 === self }) {
            assert(target.owner.outputValues.contains { $0 === target })
        } else if owner.outputValues.contains(where: { $0 === self }) {
            assert(target.owner.inputValues.contains { $0 === target })
        } else {
            // This value should bein the input or outputs of the owner
            assertionFailure()
        }
        
        // Assign the target
        self.target = target
        target.target = self
    }
    
    func assemble() -> String {
        return target?.owner.assemble() ?? ""
    }
}
