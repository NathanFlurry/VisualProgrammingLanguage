//
//  ValueType.swift
//  VPL
//
//  Created by Nathan Flurry on 3/24/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

// TODO: Move arrays and dictionaries to class-like representations
// TODO: Make Option a generic-like class too
// TODO: Add some form of generics and constraints so things like math nodes work well

public struct InvalidValueCast: Error {
    var value: Value
    var expected: ValueType
    
    init(value: Value, expected: ValueType) {
        self.value = value
        self.expected = expected
    }
}

public indirect enum ValueType: Equatable, Hashable {
    /// Everything conforms to `any`, but `any` has to be explicitly downcasted
    /// to any child type.
    case any
    
    case option(ValueType)
    
    case bool, int, float, string
    
    case array(ValueType), dictionary(ValueType, ValueType)
}

extension ValueType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .any:
            return "Any"
        case .option(let value):
            return value.description + "?"
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

extension ValueType {
    public var defaultValue: Value {
        switch self {
        case .any:
            return .option(nil)
        case .option(_):
            return .option(nil)
        case .bool:
            return .bool(false)
        case .int:
            return .int(0)
        case .float:
            return .float(0)
        case .string:
            return .string("")
        case .array(_):
            return .array([])
        case .dictionary(_, _):
            return .dictionary([:])
        }
    }
    
    /// Determines if this value type can implicitly be converted to another
    /// value type without an explicit casting.
    public func canCoerce(to other: ValueType) -> Bool {
        return other == .any ? true : self == other
    }
}

public indirect enum Value: Equatable, Hashable {
    case option(Value?)
    case bool(Bool), int(Int), float(Float), string(String)
    case array([Value]), dictionary([Value: Value])
}

extension Value: CustomStringConvertible {
    public var description: String {
        switch self {
        case .option(let v):
            if let v = v {
                return "Some(\(v))"
            } else {
                return "None"
            }
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

extension Value {
    var type: ValueType {
        switch self {
        case .option(let value):
            return .option(value?.type ?? .any)
        case .bool(_):
            return .bool
        case .int(_):
            return .int
        case .float(_):
            return .float
        case .string(_):
            return .string
        case .array(let array):
            // Find the inner type
            var innerType: ValueType = array.first?.type ?? .any
            for value in array {
                if value.type != innerType {
                    innerType = .any
                }
            }
            
            return .array(innerType)
        case .dictionary(let dict):
            // Find the inner type
            var innerKeyType: ValueType = dict.first?.key.type ?? .any
            var innerValueType: ValueType = dict.first?.key.type ?? .any
            for (key, value) in dict {
                if key.type != innerKeyType {
                    innerKeyType = .any
                }
                if value.type != innerValueType {
                    innerValueType = .any
                }
            }
            
            return .dictionary(innerKeyType, innerValueType)
        }
    }
    
    /// Determines if this value conforms to a given value type. If `deep` is
    /// true, it will also check all sub-types for values like arrays and
    /// dictionaries.
    public func conforms(to otherType: ValueType, deep: Bool = true) -> Bool {
        print("NOTE: conforms(to:) is not complete, since it does not check sub-types for arrays and dictionaries.")
        return type == otherType
    }
    
    public var bool: Bool? {
        if case let .bool(v) = self { return v } else { return nil }
    }
    
    public var int: Int? {
        if case let .int(v) = self { return v } else { return nil }
    }
    
    public var float: Float? {
        if case let .float(v) = self { return v } else { return nil }
    }
    
    public var string: String? {
        if case let .string(v) = self { return v } else { return nil }
    }
}

