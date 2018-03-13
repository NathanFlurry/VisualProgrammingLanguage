//
//  Utils.swift
//  VFL
//
//  Created by Nathan Flurry on 3/13/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import Foundation
import CoreGraphics

func randomFloat() -> CGFloat {
    return CGFloat(Float(arc4random()) / Float(UINT32_MAX))
}
