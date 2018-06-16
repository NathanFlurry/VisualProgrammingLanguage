//
//  VariableNodes.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

//public class DeclareVariableNode: Node {
//    public static let id: String = "declare variable"
//    public static let name: String = "Declare Variable"
//    public let inputTrigger: InputTrigger? = InputTrigger()
//    public let inputValues: [InputValue] = [ InputValue(id: "init value", name: "Init Value", type: .unknown) ]
//    public let output: NodeOutput = .triggers([
//        OutputTrigger(exposedVariables: [ NodeVariable(name: "Variable", type: .unknown) ])
//    ])
//    
//    var variable: NodeVariable {
//        if case let .triggers(triggers) = output {
//            return triggers[0].exposedVariables[0]
//        } else {
//            fatalError("Missing exposed variable.")
//        }
//    }
//    
//    public required init() {
//        self.setupConnections()
//    }
//}
//public class SetVariableNode: Node {
//    public static let id: String = "set variable"
//    public static let name: String = "Set Variable"
//    public let inputTrigger: InputTrigger? = InputTrigger()
//    public let inputValues: [InputValue] = [ InputValue(id: "set value", name: "Set Value", type: .unknown) ]
//    public let output: NodeOutput = .triggers([OutputTrigger()])
//    
//    public required init() {
//        self.setupConnections()
//    }
//}
//public class GetVariableNode: Node {
//    public static let id: String = "get variable"
//    public static let name: String = "Get Variable"
//    public let output: NodeOutput = .value(OutputValue(type: .unknown))
//    
//    public required init() {
//        self.setupConnections()
//    }
//}
