//
//  ValueType.swift
//  VPL
//
//  Created by Nathan Flurry on 3/24/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import Foundation

indirect enum ValueType {
    case any, bool, string, int, float, option(ValueType)
}
