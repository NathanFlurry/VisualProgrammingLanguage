//
//  TempNodes.swift
//  VPL
//
//  Created by Nathan Flurry on 3/26/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

class VariableInstance {
    var id: String
    var type: ValueType
    var defaultValue: String
    
    init(id: String, type: ValueType, defaultValue: String) {
        self.id = id
        self.type = type
        self.defaultValue = defaultValue
    }
}

class FunctionNode: Node {
    let id: String = "function"
    var outputTrigger: NodeTrigger? = NodeTrigger.outputTrigger()
    
    var name: String
    var variables: [VariableInstance]
    
    required init() {
        self.name = "TEMP"
        self.variables = [] // TODO: This
        
        self.setupConnections()
    }
    
    func assemble() -> String {
        print("assembling function")
        
        var out = ""
        
        // Add the function declaration
        out += "func \(self.name) {\n"
        
        // Add the variables
        for variable in variables {
            out += "var \(variable.id) = \(variable.defaultValue)\n"
        }
        out += "\n"
        
        // Add the next
        out += (outputTrigger?.target?.owner.assemble() ?? "// No body")
        
        // End the funciton
        out += "}"
        
        return out
    }
}

class ConstNode: Node {
    let id: String = "const"
    var outputValues: [NodeValue] = [NodeValue(id: "value", type: .any)]
    
    var value: String
    
    required init() {
        self.value = "TEMP"
        
        self.setupConnections()
    }
    
    func assemble() -> String {
        return value
    }
}

class GetVariableNode: Node {
    let id: String = "get variable"
    var outputValues: [NodeValue] = [NodeValue(id: "get value", type: .any)]
    
    var variable: VariableInstance
    
    required init() {
        // TODO: Point `variable` to the correct reference
        self.variable = VariableInstance(id: "TEMP", type: .any, defaultValue: "TEMP")
        
        self.setupConnections()
    }
    
    func assemble() -> String {
        return variable.id
    }
}

class SetVariableNode: Node {
    let id: String = "set variable"
    var inputTrigger: NodeTrigger? = NodeTrigger.inputTrigger()
    var outputTrigger: NodeTrigger? = NodeTrigger.outputTrigger()
    var inputValues: [NodeValue] = [NodeValue(id: "set value", type: .any)]
    
    var variable: VariableInstance
    
    required init() {
        // TODO: Point `variable` to the correct reference
        self.variable = VariableInstance(id: "TEMP", type: .any, defaultValue: "TEMP")
        
        self.setupConnections()
    }
    
    func assemble() -> String {
        print("assembling set variable")
        
        let assembledInput = inputValues[0].assemble()
        let out = "\(variable.id) = \(assembledInput)\n"
        return out + assembleOutputTrigger()
    }
}

class IfNode: Node {
    let id: String = "if"
    var inputTrigger: NodeTrigger? = NodeTrigger.inputTrigger()
    var outputTrigger: NodeTrigger? = NodeTrigger.outputTrigger()
    var extraOutputTriggers: [NodeTrigger] = [NodeTrigger(id: "true"), NodeTrigger(id: "false")]
    var inputValues: [NodeValue] = [NodeValue(id: "condition", type: .bool)]
    
    required init() {
        self.setupConnections()
    }
    
    func assemble() -> String {
        print("assembling if")
        
        let assembledInput = inputValues[0].assemble()
        var out = "if (\(assembledInput)) {\n"
        out += extraOutputTriggers[0].assemble() + "\n"
        out += "} else {"
        out += extraOutputTriggers[1].assemble() + "\n"
        out += "}\n"
        return out + assembleOutputTrigger()
    }
}

class PrintNode: Node {
    let id: String = "print"
    var inputTrigger: NodeTrigger? = NodeTrigger.inputTrigger()
    var outputTrigger: NodeTrigger? = NodeTrigger.outputTrigger()
    var inputValues: [NodeValue] = [NodeValue(id: "value", type: .string)]
    
    required init() {
        self.setupConnections()
    }
    
    func assemble() -> String {
        print("assembling print")
        
        let assembledInput = inputValues[0].assemble()
        return "print(\(assembledInput))\n" + assembleOutputTrigger()
    }
}

class ModNode: Node {
    let id: String = "mod"
    var inputValues: [NodeValue] = [NodeValue(id: "a", type: .int), NodeValue(id: "b", type: .int)]
    var outputValues: [NodeValue] = [NodeValue(id: "mod value", type: .int)]
    
    required init() {
        self.setupConnections()
    }
    
    func assemble() -> String {
        print("assembling mod")
        
        let assembledInputA = inputValues[0].assemble()
        let assembledInputB = inputValues[1].assemble()
        return "(\(assembledInputA) % \(assembledInputB))"
    }
}

class EqualsNode: Node {
    let id: String = "equals"
    var inputValues: [NodeValue] = [NodeValue(id: "a", type: .int), NodeValue(id: "b", type: .int)]
    var outputValues: [NodeValue] = [NodeValue(id: "equals", type: .bool)]
    
    required init() {
        self.setupConnections()
    }
    
    func assemble() -> String {
        print("assembling equals")
        
        let assembledInputA = inputValues[0].assemble()
        let assembledInputB = inputValues[1].assemble()
        return "(\(assembledInputA) == \(assembledInputB))"
    }
}
