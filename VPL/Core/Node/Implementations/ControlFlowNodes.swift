//
//  ControlFlowNodes.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

public class IfNode: Node {
    public static let id: String = "if"
    public static let name: String = "If"
    public let inputTrigger: InputTrigger? = InputTrigger()
    public let inputValues: [InputValue] = [InputValue(name: "Condition", type: .bool)]
    public let output: NodeOutput = .triggers([OutputTrigger(), OutputTrigger(name: "True"), OutputTrigger(name: "False")])
    
    public required init() {
        self.setupConnections()
    }
    
    public func exec(call: CallData) throws -> CallResult {
        if call.index == 0 {
            // Call true or false
            let condition = call.get(index: 0).bool!
            let trig = condition ? trigger(index: 1) : trigger(index: 2)
            return call.exec(trigger: trig.id, visitAgain: true)
        } else {
            // Continue execution
            return call.execDefault()
        }
    }
}

public class ForLoopNode: Node {
    public static let id: String = "for"
    public static let name: String = "For Loop"
    public let inputTrigger: InputTrigger? = InputTrigger()
    public let inputValues: [InputValue] = [InputValue(name: "From", type: .int), InputValue(name: "To", type: .int)]
    public let output: NodeOutput = .triggers([
        OutputTrigger(),
        OutputTrigger(name: "Loop", exposedVariables: [NodeVariable(name: "Index", type: .int)])
    ])
    
    public required init() {
        self.setupConnections()
    }
    
    public func exec(call: CallData) throws -> CallResult {
        // Get from and to
        let from = call.get(index: 0).int!
        let to = call.get(index: 10).int!
        
        // Either call the loop again or continue to the next node
        let count = to - from
        if call.index < count {
            return call.exec(trigger: trigger(index: 1).id)
        } else {
            return call.execDefault()
        }
    }
}
