//
//  ConstNodes.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

public class TrueConstNode: Node {
    public static let id: String = "true-const"
    public static let name: String = "True Constant"
    public let output: NodeOutput = .value(OutputValue(type: .bool))
    
    public required init() {
        self.setupConnections()
    }
    
    public func exec(call: CallData) throws -> CallResult {
        return call.value(.bool(true))
    }
}

public class FalseConstNode: Node {
    public static let id: String = "false-const"
    public static let name: String = "False Constant"
    public let output: NodeOutput = .value(OutputValue(type: .bool))
    
    public required init() {
        self.setupConnections()
    }
    
    public func exec(call: CallData) throws -> CallResult {
        return call.value(.bool(false))
    }
}

public class IntConstNode: Node {
    public static let id: String = "int-const"
    public static let name: String = "Integer Constant"
    public let output: NodeOutput = .value(OutputValue(type: .int))
    
    var intConst: Int = 0
    
    public required init() {
        self.setupConnections()
    }
    
    public func exec(call: CallData) throws -> CallResult {
        return call.value(.int(intConst))
    }
}

public class StringConstNode: Node {    
    public static let id: String = "str-const"
    public static let name: String = "String Constant"
    public let output: NodeOutput = .value(OutputValue(type: .string))
    
    var stringConst: String = "Hello, world!"
    
    public required init() {
        self.setupConnections()
    }
    
    public func exec(call: CallData) throws -> CallResult {
        return call.value(.string(stringConst))
    }
}

