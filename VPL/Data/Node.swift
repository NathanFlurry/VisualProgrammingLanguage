//
//  Node.swift
//  VPL
//
//  Created by Nathan Flurry on 3/26/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

public enum NodeOutput {
    case triggers([OutputTrigger]), value(OutputValue), none

    /// Returns the triggers, if a triggers type.
    public var triggers: [OutputTrigger]? {
        if case let .triggers(triggers) = self {
            return triggers
        } else {
            return nil
        }
    }

    /// Returns the value, if a value type.
    public var value: OutputValue? {
        if case let .value(value) = self {
            return value
        } else {
            return nil
        }
    }
}

public protocol Node: class {
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
    public var inputTrigger: InputTrigger? { return nil }
    public var inputValues: [InputValue] { return [] }
    public var inputVariables: [InputVariable] { return [] }
    public var output: NodeOutput { return .none }
}

extension Node {
    /// Finds the first available input trigger. If this node has an input
    /// trigger, it returns that. Othwerise, it follows the output value until
    /// it finds an input trigger.
    public var nearestControlNode: InputTrigger? {
        if let trigger = inputTrigger {
            return trigger
        } else if case let .value(value) = output {
            return value.target?.owner.nearestControlNode
        } else {
            return nil
        }
    }

    /// Variables that this node can use.
    public var availableVariables: [NodeVariable] {
        // Add variables available from all parent triggers
        let trigger  = nearestControlNode
        return (trigger?.target?.exposedVariables ?? []) + (trigger?.target?.owner.availableVariables ?? [])
    }

    public func setupConnections() {
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

    public func destroy() {
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

    public func assembleOutputTrigger(id: String? = nil) -> String {
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
