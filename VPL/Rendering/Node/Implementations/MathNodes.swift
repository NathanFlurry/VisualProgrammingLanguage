//
//  MathNodes.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

class ModNode: DisplayableNode {
    static let shortcutCharacter: String? = "M"
    
    static let id: String = "mod"
    static let name: String = "Modulo"
    var inputValues: [InputValue] = [InputValue(id: "a", type: .int), InputValue(id: "b", type: .int)]
    var output: NodeOutput = .value(OutputValue(type: .int))
    
    required init() {
        self.setupConnections()
    }
    
    func assemble() -> String {
        let assembledInputA = inputValues[0].assemble()
        let assembledInputB = inputValues[1].assemble()
        return "(\(assembledInputA) % \(assembledInputB))"
    }
}

class EqualsNode: DisplayableNode {
    static let shortcutCharacter: String? = "E"
    
    static let id: String = "equals"
    static let name: String = "Equals"
    var inputValues: [InputValue] = [InputValue(id: "a", type: .int), InputValue(id: "b", type: .int)]
    var output: NodeOutput = .value(OutputValue(type: .bool))
    
    required init() {
        self.setupConnections()
    }
    
    func assemble() -> String {
        let assembledInputA = inputValues[0].assemble()
        let assembledInputB = inputValues[1].assemble()
        return "(\(assembledInputA) == \(assembledInputB))"
    }
}
