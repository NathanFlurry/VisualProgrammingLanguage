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

class FunctionNode: DisplayableNode {
    static let shortcutCharacter: String? = "F"
    
    let id: String = "function"
    let name: String = "Function"
    let outputTrigger: NodeTrigger? = NodeTrigger.outputTrigger()
    
    var functionName: String
    var variables: [VariableInstance]
    
    required init() {
        self.functionName = "TEMP"
        self.variables = [] // TODO: This
        
        self.setupConnections()
    }
    
    func assemble() -> String {
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

class ConstNode: DisplayableNode {
    static let shortcutCharacter: String? = "C"
    
    let id: String = "const"
    let name: String = "Constant"
    let outputValues: [NodeValue] = [NodeValue(id: "value", type: .any)]
    
    var value: String
    
    required init() {
        self.value = "TEMP"
        
        self.setupConnections()
    }
    
    func assemble() -> String {
        return value
    }
}

class GetVariableNode: DisplayableNode {
    static let shortcutCharacter: String? = "V"
    
    let id: String = "get variable"
    let name = "Get Variable"
    let outputValues: [NodeValue] = [NodeValue(id: "get value", type: .any)]
    
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

class SetVariableNode: DisplayableNode {
    static let shortcutCharacter: String? = "S"
    
    let id: String = "set variable"
    let name: String = "Set Variable"
    let inputTrigger: NodeTrigger? = NodeTrigger.inputTrigger()
    let outputTrigger: NodeTrigger? = NodeTrigger.outputTrigger()
    let inputValues: [NodeValue] = [NodeValue(id: "set value", type: .any)]
    
    var variable: VariableInstance
    
    required init() {
        // TODO: Point `variable` to the correct reference
        self.variable = VariableInstance(id: "TEMP", type: .any, defaultValue: "TEMP")
        
        self.setupConnections()
    }
    
    func assemble() -> String {
        let assembledInput = inputValues[0].assemble()
        let out = "\(variable.id) = \(assembledInput)\n"
        return out + assembleOutputTrigger()
    }
}

class IfNode: DisplayableNode {
    static let shortcutCharacter: String? = "I"
    
    let id: String = "if"
    let name: String = "If"
    let inputTrigger: NodeTrigger? = NodeTrigger.inputTrigger()
    let outputTrigger: NodeTrigger? = NodeTrigger.outputTrigger()
    let extraOutputTriggers: [NodeTrigger] = [NodeTrigger(id: "true"), NodeTrigger(id: "false")]
    let inputValues: [NodeValue] = [NodeValue(id: "condition", type: .bool)]
    
    required init() {
        self.setupConnections()
    }
    
    func assemble() -> String {
        let assembledInput = inputValues[0].assemble()
        var out = "if (\(assembledInput)) {\n"
        out += extraOutputTriggers[0].assemble() + "\n"
        out += "} else {"
        out += extraOutputTriggers[1].assemble() + "\n"
        out += "}\n"
        return out + assembleOutputTrigger()
    }
}

class PrintNode: DisplayableNode {
    static let shortcutCharacter: String? = "P"
    
    let id: String = "print"
    let name = "Print"
    let inputTrigger: NodeTrigger? = NodeTrigger.inputTrigger()
    let outputTrigger: NodeTrigger? = NodeTrigger.outputTrigger()
    let inputValues: [NodeValue] = [NodeValue(id: "value", type: .string)]
    
    required init() {
        self.setupConnections()
    }
    
    func assemble() -> String {
        let assembledInput = inputValues[0].assemble()
        return "print(\(assembledInput))\n" + assembleOutputTrigger()
    }
}

class ModNode: DisplayableNode {
    static let shortcutCharacter: String? = "M"
    
    let id: String = "mod"
    let name: String = "Modulo"
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
    
    let id: String = "equals"
    let name: String = "Equals"
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
