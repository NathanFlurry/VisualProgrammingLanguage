//
//  Utils.swift
//  VFL
//
//  Created by Nathan Flurry on 3/13/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

extension UIFont {
    static func codeFont(size: CGFloat = UIFont.systemFontSize) -> UIFont {
        return UIFont(name: "Menlo-Regular", size: size)!
    }
}

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

extension String {
    mutating func append(code: String, indent: Int = 0) {
        let indentString = String(repeating: "    ", count: indent)
        for line in code.split(separator: "\n") {
            self.append(indentString + line + "\n")
        }
    }
}

// Appent code
infix operator !+=
func !+=(lhs: inout String, rhs: String) {
    lhs.append(code: rhs)
}

// Appent code with 1 indent
infix operator !!+=
func !!+=(lhs: inout String, rhs: String) {
    lhs.append(code: rhs, indent: 1)
}
