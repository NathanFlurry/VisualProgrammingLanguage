//
//  Node.swift
//  VPL
//
//  Created by Nathan Flurry on 3/26/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import Foundation

enum NodeOutput {
    case triggers([OutputTrigger]), value(OutputValue)
}

protocol Node: class {
    static var id: String { get }
    static var name: String { get }
    var inputTrigger: InputTrigger? { get }
    var inputValues: [InputValue] { get }
    var output: NodeOutput { get }
    
    init()
    
    func assemble() -> String
}

extension Node {
    func assembleOutputTrigger() -> String {
        return outputTrigger?.assemble() ?? ""
    }
}

extension Node {
    var inputTrigger: NodeTrigger? { return nil }
    var outputTrigger: NodeTrigger? { return nil }
    var extraOutputTriggers: [NodeTrigger] { return [] }
    var inputValues: [NodeValue] { return [] }
    var outputValues: [NodeValue] { return [] }
}

extension Node {
    /// Finds the first available input trigger. If this node has an input
    /// trigger, it returns that. Othwerise, it follows the output value until
    /// it finds an input trigger.
    var closestInputTrigger: NodeTrigger? {
//        return inputTrigger?
        fatalError("Unimplemented.")
    }
    
    /// Variables that this node can use.
    var availableVariables: [VariableInstance] {
        var v = [VariableInstance]()
        
        // Add variables from the trigger connected to the input trigger
        if let vars = inputTrigger?.target?.exposedVariables {
            v += vars
        }
        
        // Add varaibles on the connected parent nodes
        if let vars = inputTrigger?.target?.owner.availableVariables {
            v += vars
        }
        
        // Add variables from any
        
        return v
    }
    
    func setupConnections() {
        setupTrigger(connection: inputTrigger)
        setupTrigger(connection: outputTrigger)
        for trigger in extraOutputTriggers { setupTrigger(connection: trigger) }
        for value in inputValues { setupValue(connection: value) }
        for value in outputValues { setupValue(connection: value) }
    }
    
    private func setupTrigger(connection: NodeTrigger?) {
        guard let connection = connection else { return }
        connection.owner = self
    }
    
    private func setupValue(connection: NodeValue?) {
        guard let connection = connection else { return }
        connection.owner = self
    }
    
    func destroy() {
        inputTrigger?.reset()
        outputTrigger?.reset()
        for trigger in extraOutputTriggers { trigger.reset() }
        for value in inputValues { value.reset() }
        for value in outputValues { value.reset() }
    }
}
