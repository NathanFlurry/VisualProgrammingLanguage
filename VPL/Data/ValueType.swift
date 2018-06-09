//
//  ValueType.swift
//  VPL
//
//  Created by Nathan Flurry on 3/24/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

// TODO: Move arrays and dictionaries to class-like representations

public indirect enum ValueType: Equatable, Hashable, CustomStringConvertible {
    case bool, int, float, string
    case array(ValueType), dictionary(ValueType, ValueType)
    
    public var description: String {
        switch self {
        case .bool:
            return "Bool"
        case .int:
            return "Int"
        case .float:
            return "Float"
        case .string:
            return "String"
        case .array(let value):
            return "[\(value.description)]"
        case .dictionary(let key, let value):
            return "[\(key.description): \(value.description)"
        }
    }
}

public indirect enum Value: Equatable, Hashable, CustomStringConvertible {
    case bool(Bool), int(Int), float(Float), string(String)
    case array([Value]), dictionary([Value: Value])
    
    public var description: String {
        switch self {
        case .bool(let v):
            return String(v)
        case .int(let v):
            return String(v)
        case .float(let v):
            return "\(v)f"
        case .string(let v):
            return "\"\(v)\""
        case .array(let array):
            let contents = array.map { $0.description }.joined()
            return "[\(contents)]"
        case .dictionary(let dictionary):
            let contents = dictionary.map { "\($0): \($1)" }.joined()
            return "[\(contents)"
        }
    }
}

