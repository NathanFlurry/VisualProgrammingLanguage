//
//  Program.swift
//  VPL
//
//  Created by Nathan Flurry on 6/9/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import Foundation

enum InternalRuntimeError: Error {
    case missingStartNode
    case invalidTriggerID
    case stackIsEmpty
}

// TODO: Need a way to notify of the updated running state, or just observe it for better performance
// TODO: Should this run on another thread or have the user do it manually

public class Program {
    /// Determines if the program is currently running.
    public private(set) var running: Bool = false
    
    /// List of all nodes associated with the program.
    var nodes: [Node]
    
    /// Finds the starting node.
    var startNode: Node? {
        return nodes.first { $0 is BaseNode }
    }
    
    /// The runtime stack for the program.
    private var stack: [Node] = []
    
    init(nodes: [Node] = []) {
        self.nodes = nodes
    }
    
    public func run() throws {
        // Set to running
        running = true
        
        // Find the start node of the program
        guard let startNode = startNode else {
            throw InternalRuntimeError.missingStartNode
        }
        
        // Set the stack to the start node so the program knows where to start
        stack = [startNode]
        
        // Execute the current node
        while stack.count > 0 && running {
            try executeCurrent()
        }
    }
    
    public func stop() {
        // Set to not running
        running = false
        
        // Clear the stack
        stack = []
    }
    
    private func executeCurrent() throws {
        // DEBUG: Print the stack
        print("Stack", stack.map { type(of: $0).name }.joined())
        
        // Find the node to execute
        guard let node = stack.last else {
            throw InternalRuntimeError.stackIsEmpty
        }
        
        // TODO: Traverse data flow to get call data
        
        // Execute the node and get the results
        let data = CallData(node: node, params: [], asyncCallback: self.asyncCallback)
        let result = try node.exec(call: data)
        print("Executed node", node, result)
        
        // Handle the action
        switch result.data {
        case .none:
            // Remove the last node from the stack if reaches an end
            stack.removeLast()
            
            break
        case .exec(let triggerID):
            // Find the trigger
            guard let trigger = node.outputTrigger(forID: triggerID) else {
                throw InternalRuntimeError.invalidTriggerID
            }
            
            // Find the target node
            if let targetNode = trigger.target?.owner {
                if trigger.nextTrigger {
                    // Replace the current item on the stack if moving to the next node
                    stack[stack.count - 1] = targetNode
                } else {
                    // Push the node to the stack if it's a child
                    stack.append(node)
                }
            } else {
                // Remove the last node from the stack if reaches an end
                stack.removeLast()
            }
            
            break
        case .value(let value):
            print("Unimplemented.")
            break
        case .async:
            fatalError("Unimplemented.")
        }
    }
    
    private func asyncCallback(results: CallResult) {
        fatalError("Unimplemented.")
    }
}
