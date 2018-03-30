//
//  Node.swift
//  VPL
//
//  Created by Nathan Flurry on 3/26/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import Foundation

enum NodeOutput {
    case triggers([OutputTrigger]), value(OutputValue), none
}

protocol Node: class {
    static var id: String { get }
    static var name: String { get }
    var inputTrigger: InputTrigger? { get }
    var inputValues: [InputValue] { get }
    var inputVariables: [InputVariable] { get }
    var output: NodeOutput { get }
    
    init()
    
    func assemble() -> String
}

extension Node {
    var inputTrigger: InputTrigger? { return nil }
    var inputValues: [InputValue] { return [] }
    var inputVariables: [InputVariable] { return [] }
    var output: NodeOutput { return .none }
}

extension Node {
    /// Finds the first available input trigger. If this node has an input
    /// trigger, it returns that. Othwerise, it follows the output value until
    /// it finds an input trigger.
    var closestInputTrigger: InputTrigger? {
        if let trigger = inputTrigger {
            return trigger
        } else if case let .value(value) = output {
            return value.target?.owner.closestInputTrigger
        } else {
            return nil
        }
    }
    
    /// Variables that this node can use.
    var availableVariables: [NodeVariable] {
        // Add variables available from all parent triggers
        let trigger  = closestInputTrigger
        return (trigger?.target?.exposedVariables ?? []) + (trigger?.target?.owner.availableVariables ?? [])
    }
    
    func setupConnections() {
        inputTrigger?.owner = self
        for value in inputValues { value.owner = self }
        for variable in inputVariables { variable.owner = self }
        switch output {
        case .triggers(let triggers):
            for trigger in triggers { trigger.owner = self }
        case .value(let value):
            value.owner = self
        case .none:
            break
        }
    }
    
    func destroy() {
        inputTrigger?.reset()
        for value in inputValues { value.reset() }
        switch output {
        case .triggers(let triggers):
            for trigger in triggers { trigger.reset() }
        case .value(let value):
            value.reset()
        case .none:
            break
        }
    }
    
    func assembleOutputTrigger(id: String? = nil) -> String {
        if case let .triggers(triggers) = output {
            if let id = id {
                if let trigger = triggers.first(where: { $0.id == id }) {
                    return trigger.assemble()
                } else {
                    fatalError("No trigger with id \(id).")
                }
            } else {
                if let trigger = triggers.first {
                    return trigger.assemble()
                } else {
                    fatalError("No output triggers provided.")
                }
            }
        } else {
            fatalError("Missing output trigger, can't assemble it.")
        }
    }
}
