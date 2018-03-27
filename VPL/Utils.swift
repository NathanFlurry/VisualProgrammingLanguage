//
//  Utils.swift
//  VFL
//
//  Created by Nathan Flurry on 3/13/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

func randomFloat() -> CGFloat {
    return CGFloat(Float(arc4random()) / Float(UINT32_MAX))
}

extension NSLayoutConstraint {
    @discardableResult
    func activate() -> Self {
        self.isActive = true
        return self
    }
    
    @discardableResult
    func setPriority(_ priority: UILayoutPriority) -> Self {
        self.priority = priority
        return self
    }
}
