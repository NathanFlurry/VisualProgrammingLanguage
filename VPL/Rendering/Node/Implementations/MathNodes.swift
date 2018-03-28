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
    let inputValues: [NodeValue] = [NodeValue(id: "a", type: .int), NodeValue(id: "b", type: .int)]
    let outputValues: [NodeValue] = [NodeValue(id: "mod value", type: .int)]
    
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
    let inputValues: [NodeValue] = [NodeValue(id: "a", type: .int), NodeValue(id: "b", type: .int)]
    let outputValues: [NodeValue] = [NodeValue(id: "equals", type: .bool)]
    
    required init() {
        self.setupConnections()
    }
    
    func assemble() -> String {
        let assembledInputA = inputValues[0].assemble()
        let assembledInputB = inputValues[1].assemble()
        return "(\(assembledInputA) == \(assembledInputB))"
    }
}
