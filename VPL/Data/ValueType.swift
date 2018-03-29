//
//  ValueType.swift
//  VPL
//
//  Created by Nathan Flurry on 3/24/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import Foundation

indirect enum ValueType: CustomStringConvertible {
    /// Custom variable type. These correspond to the exact Swift variable type.
    case type(String)
    
    // `unknown` is used as a way of passing around non-primitive or unknown
    // value types. This basically allows for having functionality that the VFL
    // does not support yet. *However*, this removes safety can may cause
    // compile time errors after assembly.
    case unknown
    
    /// Provides as a way of having a flexible variable type that is inherited
    /// from another input value. `inputId` is the ID of the `InputValue` that
    /// represents where the data comes from.
//    case proxy(inputId: String)
    
    static var bool: ValueType { return .type("Bool") }
    static var int: ValueType { return .type("Int") }
    static var float: ValueType { return .type("Float") }
    static var string: ValueType { return .type("String") }
        
    var description: String {
        switch self {
        case .type(let type):
            return type
        case .unknown:
            return "unknown"
        }
    }
    
    func canCast(to other: ValueType) -> Bool {
        // Anything cna be casted to unknown
        if case .unknown = other {
            return true
        }
        
        // Check for other casting
        switch self {
        case .type(let type):
            if case let .type(otherType) = other {
                return type == otherType
            } else {
                return false
            }
        case .unknown:
            // Unknown can be cast to anything
            return true
        }
    }
}
