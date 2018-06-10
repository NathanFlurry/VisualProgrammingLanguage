//
//  MathNodes.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

public class MathNode: Node {
    public class var id: String { fatalError("Unimplemented.") }
    public class var name: String { fatalError("Unimplemented.") }
    public let inputValues: [InputValue] = [InputValue(name: "A", type: .int), InputValue(name: "B", type: .int)]
    public let output: NodeOutput = .value(OutputValue(type: .int))

    public required init() {
        self.setupConnections()
    }
    
    internal func execMath(a: Int, b: Int) -> Int {
        fatalError("Unimplemented.")
    }
    
    public func exec(call: CallData) throws -> CallResult {
        let a = call.get(index: 0).int!
        let b = call.get(index: 1).int!
        let result = execMath(a: a, b: b)
        return call.value(.int(result))
    }
}
public class AddNode: MathNode {
    public override class var id: String { return "add" }
    public override class var name: String { return "Add" }
    
    override func execMath(a: Int, b: Int) -> Int {
        return a + b
    }
}
public class SubtractNode: MathNode {
    public override class var id: String { return "subtract" }
    public override class var name: String { return "Subtract" }
    
    override func execMath(a: Int, b: Int) -> Int {
        return a - b
    }
}
public class MultiplyNode: MathNode {
    public override class var id: String { return "multiply" }
    public override class var name: String { return "Multiply" }
    
    override func execMath(a: Int, b: Int) -> Int {
        return a * b
    }
}
public class DivideNode: MathNode {
    public override class var id: String { return "divide" }
    public override class var name: String { return "Divide" }
    
    override func execMath(a: Int, b: Int) -> Int {
        return a / b
    }
}
public class ModuloNode: MathNode {
    public override class var id: String { return "modulo" }
    public override class var name: String { return "Modulo" }
    
    override func execMath(a: Int, b: Int) -> Int {
        return a % b
    }
}

public class RandomIntNode: Node {
    public static let id: String = "random-in"
    public static let name: String = "Random Integer"
    public var inputValues: [InputValue] = [ InputValue(name: "Lower", type: .int), InputValue(name: "Upper", type: .int) ]
    public let output: NodeOutput = .value(OutputValue(type: .int))
    
    public required init() {
        self.setupConnections()
    }
    
    public func exec(call: CallData) throws -> CallResult {
        let lower = call.get(index: 0).int!
        let upper = call.get(index: 1).int!
        return call.value(.int(Int.random(in: lower..<upper)))
    }
}

public class RandomFloatNode: Node {
    public static let id: String = "random-float"
    public static let name: String = "Random Float"
    public var inputValues: [InputValue] = [ InputValue(name: "Lower", type: .float), InputValue(name: "Upper", type: .float) ]
    public let output: NodeOutput = .value(OutputValue(type: .float))
    
    public required init() {
        self.setupConnections()
    }
    
    public func exec(call: CallData) throws -> CallResult {
        let lower = call.get(index: 0).int!
        let upper = call.get(index: 1).int!
        return call.value(.int(Int.random(in: lower..<upper)))
    }
}

public class EqualsNode: Node {
    public static let id: String = "equals"
    public static let name: String = "Equals"
    public let inputValues: [InputValue] = [InputValue(name: "A", type: .int), InputValue(name: "B", type: .int)]
    public let output: NodeOutput = .value(OutputValue(type: .bool))
    
    public required init() {
        self.setupConnections()
    }
    
    public func exec(call: CallData) throws -> CallResult {
        let result = call.get(index: 0).int! == call.get(index: 1).int!
        return call.value(.bool(result))
    }
}
