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

extension Int {
    static func random() -> Int {
        return Int(arc4random())
    }
}

extension CATransform3D {
    static var identity: CATransform3D { return CATransform3DIdentity }
}

// Font extension
extension UIFont {
    static func codeFont(size: CGFloat = UIFont.systemFontSize) -> UIFont {
        return UIFont(name: "Menlo-Regular", size: size)!
    }
}

extension NSMutableAttributedString {
    open func add(attribute: NSAttributedStringKey, value: Any) {
        addAttribute(attribute, value: value, range: NSRange(location: 0, length: length))
    }
}

// Random float

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(Float(arc4random()) / Float(UINT32_MAX))
    }
}

extension CGRect {
    public var center: CGPoint {
        return CGPoint(x: midX, y: midY)
    }

    public init(square: CGFloat) {
        self.init(size: CGSize(width: square, height: square))
    }

    public init(size: CGSize) {
        self.init(origin: .zero, size: size)
    }
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
