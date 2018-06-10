//
//  Node.swift
//  VPL
//
//  Created by Nathan Flurry on 3/26/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import Foundation

public let defaultNodes: [Node.Type] = [
    TrueConstNode.self,
    FalseConstNode.self,
    IntConstNode.self,
    StringConstNode.self,
    
//    DeclareVariableNode.self,
//    SetVariableNode.self,
//    GetVariableNode.self,
    IfNode.self,
    ForLoopNode.self,
    
    AddNode.self,
    SubtractNode.self,
    MultiplyNode.self,
    DivideNode.self,
    ModuloNode.self,
    RandomIntNode.self,
    RandomFloatNode.self,
    EqualsNode.self,
    
//    ArrayCreateNode.self,
//    ArrayAppendNode.self,
//    ArraySetAtNode.self,
//    ArrayGetAtNode.self,
//    ArrayRemoveAtNode.self,
//    ArrayCountNode.self,

//    DictionaryCreateNode.self,
//    DictionarySetAtNode.self,
//    DictionaryGetAtNode.self,
//    DictionaryContainsKeyNode.self,
//    DictionaryRemoveAtNode.self,
    
    PrintNode.self,
//    SwapNode.self
]

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

struct CallIndexOutOfBounds: Error {
    var call: CallData
    var index: Int
    
    init(call: CallData, index: Int) {
        self.call = call
        self.index = index
    }
}

struct InvalidCallType: Error {
    var call: CallData
    var value: Value
    var expected: ValueType
    
    init(call: CallData, value: Value, expected: ValueType) {
        self.call = call
        self.value = value
        self.expected = expected
    }
}

struct AsyncResultFromAsyncCall {
    var call: CallData
    
    init(call: CallData) {
        self.call = call
    }
}

public struct CallData {
    /// The node that this data is being passed to.
    var node: Node
    
    // TODO: Use this properly
    /// How many times this node has been called in the stack, if it requested
    /// to be called again when the child stack is depleted.
    var index: Int = 0
    
    /// The parameters to be passed to the node.
    var params: [Value]
    
    // TOOD: Make sure we handle if the async callback is called before the end of the exec
    /// Callback used if passed to an async node.
    var asyncCallback: CallResult.AsyncCallback = { result in
        // Ensure it's not an async result
        if case .async = result.data {
            // TODO: Make sure this is not a fatal error and handled properly
            fatalError("Async result from async call.")
//            throw AsyncResultFromAsyncCall(call: self)
        }
        
        // Log the result
        print("ASYNC CALLBCK RESULT", result)
    }
    
    /// Creates new call data for the node to use.
    init(node: Node, params: [Value], asyncCallback: CallResult.AsyncCallback) {
        self.node = node
        self.params = params
    }
    
    /// Fetches a parameter at a given index and validates its index.
    func get(index: Int) -> Value {
        if index < 0 || index >= params.count {
            fatalError("Index \(index) is out of bounds for \(params.count) params.")
        } else {
            return params[index]
        }
    }
    
    func noResult(visitAgain: Bool = false) -> CallResult {
        return CallResult(call: self, data: .none, visitAgain: visitAgain)
    }
    
    func execDefault(visitAgain: Bool = false) -> CallResult {
        if let triggers = self.node.output.triggers, let trigger = triggers.first {
            return self.exec(trigger: trigger.id)
        } else {
            return self.noResult(visitAgain: visitAgain)
        }
    }
    
    func exec(trigger: OutputTrigger.ID, visitAgain: Bool = false) -> CallResult {
        return CallResult(call: self, data: .exec(trigger), visitAgain: visitAgain)
    }
    
    func value(_ value: Value, visitAgain: Bool = false) -> CallResult {
        return CallResult(call: self, data: .value(value), visitAgain: visitAgain)
    }
}

public struct CallResult {
    enum Data {
        /// This will do nothing after this node. This is very rarely used,
        /// since nothing will execute after it.
        case none
        
        // TODO: Associate variables for this for things like for loop
        /// This will execut the code at a given trigger.
        case exec(OutputTrigger.ID)
        
        /// Returns value from node.
        case value(Value)
        
        // TODO: Implement async
        /// Notes that this function is async.
        case async
    }
    
    public typealias AsyncCallback = (CallResult) -> Void
    
    /// The original call data passed to the node.
    var call: CallData
    
    /// Data from the node execution.
    var data: Data
    
    /// If the node should be called again when the stack children has been
    /// depleted. This is handy for things like for loops or if statements
    /// which need to be visited multiple times.
    var visitAgain: Bool
    
    fileprivate init(call: CallData, data: Data, visitAgain: Bool) {
        self.call = call
        self.data = data
        self.visitAgain = visitAgain
    }
}

// TODO: Add exec() and asyncExec(). Implement asyncExec() by default to call exec()
// TODO: Async will queue while waiting to hit another async point on another node at which point that can execute

public protocol Node: class {
    static var destroyable: Bool { get }
    static var id: String { get }
    static var name: String { get }
    
    var inputTrigger: InputTrigger? { get }
    var inputValues: [InputValue] { get }
    var inputVariables: [InputVariable] { get }
    var output: NodeOutput { get }
    
    init()
    
    func exec(call: CallData) throws -> CallResult
}

extension Node {
    public static var destroyable: Bool { return true }
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
    
    func trigger(index: Int) -> OutputTrigger {
        switch self.output {
        case .triggers(let triggers):
            return triggers[index]
        case .value(_), .none:
            fatalError("Cannot get output trigger for value or none output.")
        }
    }
    
    func outputTrigger(forID id: OutputTrigger.ID) -> OutputTrigger? {
        if case let .triggers(triggers) = output {
            return triggers.first { $0.id == id }
        } else {
            return nil
        }
    }
    
    public func setupConnections() {
        // Set input owners
        inputTrigger?.owner = self
        for value in inputValues { value.owner = self }
        for variable in inputVariables { variable.owner = self }
        
        // Setup outputs
        switch output {
        case .triggers(let triggers):
            // Set owners
            for trigger in triggers { trigger.owner = self }
            
            // Set next trigger
            triggers.first?.nextTrigger = true
        case .value(let value):
            // Set owner
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
}
