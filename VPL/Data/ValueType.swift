//
//  ValueType.swift
//  VPL
//
//  Created by Nathan Flurry on 3/24/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import Foundation

indirect enum ValueType: CustomStringConvertible {
    case any, bool, string, int, float, option(ValueType)
    
    var description: String {
        switch self {
        case .any:
            return "any"
        case .bool:
            return "bool"
        case .string:
            return "string"
        case .int:
            return "int"
        case .float:
            return "float"
        case .option(let inner):
            return inner.description + "?"
        }
    }
}
