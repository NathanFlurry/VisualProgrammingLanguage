//
//  MathNodes.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

class MathNode: DisplayableNode {
    static let shortcutCharacter: String? = "M"
    
    class var id: String { fatalError("Unimplemented.") }
    class var name: String { fatalError("Unimplemented.") }
    var inputValues: [InputValue] = [InputValue(id: "a", name: "A", type: .int), InputValue(id: "b", name: "B", type: .int)]
    var output: NodeOutput = .value(OutputValue(type: .int))
    
    var inputA: InputValue { return inputValues[0] }
    
    var inputB: InputValue { return inputValues[1] }
    
    required init() {
        self.setupConnections()
    }
    
    func assemble() -> String {
        fatalError("Unimplemented.")
    }
}

class AddNode: MathNode {
    override class var id: String { return "add" }
    override class var name: String { return "Add" }
    
    override func assemble() -> String {
        return "(\(inputA.assemble()) + \(inputB.assemble()))"
    }
}

class SubtractNode: MathNode {
    override class var id: String { return "subtract" }
    override class var name: String { return "Subtract" }
    
    override func assemble() -> String {
        return "(\(inputA.assemble()) - \(inputB.assemble()))"
    }
}

class MultiplyNode: MathNode {
    override class var id: String { return "multiply" }
    override class var name: String { return "Multiply" }
    
    override func assemble() -> String {
        return "(\(inputA.assemble()) * \(inputB.assemble()))"
    }
}

class DivideNode: MathNode {
    override class var id: String { return "divide" }
    override class var name: String { return "Divide" }
    
    override func assemble() -> String {
        return "(\(inputA.assemble()) / \(inputB.assemble()))"
    }
}

class ModuloNode: MathNode {
    override class var id: String { return "modulo" }
    override class var name: String { return "Modulo" }
    
    override func assemble() -> String {
        return "(\(inputA.assemble()) % \(inputB.assemble()))"
    }
}

class EqualsNode: DisplayableNode {
    static let shortcutCharacter: String? = "E"
    
    static let id: String = "equals"
    static let name: String = "Equals"
    var inputValues: [InputValue] = [InputValue(id: "a", name: "A", type: .int), InputValue(id: "b", name: "B", type: .int)]
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
