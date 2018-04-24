//
//  Utils.swift
//  VFL
//
//  Created by Nathan Flurry on 3/13/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

// See https://stackoverflow.com/a/33374024
var isInPlayground: Bool {
    return Bundle.allBundles.contains(where: { ($0.bundleIdentifier ?? "").hasPrefix("com.apple.Playgrounds.") })
}

// Easy node insertion
extension DisplayNodeCanvas {
    public func insert(node: DisplayableNode, base: DisplayNode, offset: CGPoint) -> DisplayNode {
        // Create the ndoe
        let node = DisplayNode(node: node)

        // Insert the node
        insert(
            node: node,
            at: CGPoint(x: base.center.x + offset.x, y: base.center.y + offset.y),
            absolutePosition: true
        )

        return node
    }
}

// Font extension
extension UIFont {
    static func codeFont(size: CGFloat = UIFont.systemFontSize) -> UIFont {
        return UIFont(name: "Menlo-Regular", size: size)!
    }
}

// Random float
func randomFloat() -> CGFloat {
    return CGFloat(Float(arc4random()) / Float(UINT32_MAX))
}

// Extension helpers
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

// Ew... I know. Just pretend you didn't see this.
extension UIView {
    var parentViewController: UIViewController? {
        // Iterate through parents until it finds a UIViewController
        var parentResponder: UIResponder? = self
        while parentResponder != nil {
            parentResponder = parentResponder!.next
            if let viewController = parentResponder as? UIViewController {
                return viewController
            }
        }
        return nil
    }
}

// Append code
public extension String {
    public mutating func append(code: String, indent: Int = 0) {
        let indentString = String(repeating: "    ", count: indent)
        for line in code.split(separator: "\n") {
            self.append(indentString + line + "\n")
        }
    }
}

infix operator !+=
public func !+=(lhs: inout String, rhs: String) {
    lhs.append(code: rhs)
}

infix operator !!+=
public func !!+=(lhs: inout String, rhs: String) {
    lhs.append(code: rhs, indent: 1)
}
