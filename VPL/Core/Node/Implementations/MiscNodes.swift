//
//  MiscNodes.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

public class PrintNode: Node {
    public static let id: String = "print"
    public static let name: String = "Print"
    public let inputTrigger: InputTrigger? = InputTrigger()
    public let inputValues: [InputValue] = [InputValue(name: "Value", type: .string)]
    public let output: NodeOutput = .triggers([OutputTrigger()])
    
    public required init() {
        self.setupConnections()
    }
    
    public func exec(call: CallData) throws -> CallResult {
        print(call.get(index: 0).string!)
        return call.execDefault()
    }
}
//public class SwapNode: Node {
//    public static let id: String = "swap"
//    public static let name: String = "Swap"
//    public let inputTrigger: InputTrigger? = InputTrigger()
//    public let inputVariables: [InputVariable] = [InputVariable(id: "a", name: "A", type: .unknown), InputVariable(id: "b", name: "B", type: .unknown)]
//    public let output: NodeOutput = .triggers([OutputTrigger()])
//    
//    public required init() {
//        self.setupConnections()
//    }
//}
