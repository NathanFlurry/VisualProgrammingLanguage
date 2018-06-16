//
//  NodeVariable.swift
//  VPL
//
//  Created by Nathan Flurry on 3/29/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import Foundation

public class NodeVariable {
    public typealias ID = UUID
    
    /// The trigger that owns this variable.
    public internal(set) weak var owner: OutputTrigger!
    
    /// An identifier for this variable.
    public let id: ID = UUID()
    
    /// Label for human readability.
    public let name: String
    
    /// The type of variable.
    public let type: ValueType
    
    public init(name: String, type: ValueType) {
        self.name = name
        self.type = type
    }
}
