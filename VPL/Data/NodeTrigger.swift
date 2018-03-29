//
//  NodeTrigger.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import Foundation

class VariableInstance {
    /// A UUID that represents this variable in the code itself.
    let id: String
    
    /// Label for human readability.
    let name: String
    
    /// The type of variable.
    let type: ValueType
    
    init(name: String, type: ValueType) {
        self.id = UUID().uuidString
        self.name = name
        self.type = type
    }
}


final class InputTrigger {
    /// The node that owns this trigger.
    var owner: Node!
    
    /// The connected trigger.
    private(set) var target: OutputTrigger?
    
    init() {
        
    }
    
    /// Determines if two triggers can be connected.
    func canConnect(to newTarget: OutputTrigger) -> Bool {
        return newTarget.canConnect(to: self)
    }
    
    /// Connects this trigger to another trigger.
    func connect(to newTarget: OutputTrigger) {
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

final class OutputTrigger {
    /// The node that owns this trigger
    var owner: Node!
    
    /// An identifier for this trigger.
    var id: String
    
    /// The connected trigger.
    private(set) var target: InputTrigger?
    
    /// Variables availables to any other nodes further along the control flow.
    var exposedVariables: [VariableInstance]
    
    init(id: String = "out", exposedVariables: [VariableInstance] = []) {
        self.id = id
        self.exposedVariables = exposedVariables
    }
    
    /// Determines if two triggers can be connected.
    func canConnect(to newTarget: InputTrigger) -> Bool {
        return owner !== newTarget.owner && target == nil && newTarget.target == nil
    }
    
    /// Connects this trigger to another trigger.
    func connect(to newTarget: InputTrigger) {
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
