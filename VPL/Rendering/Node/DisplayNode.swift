//
//  Node.swift
//  VPL
//
//  Created by Nathan Flurry on 3/13/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

protocol DisplayableNode: Node {
    /// The character that can be drawn to spawn this node.
    static var shortcutCharacter: String? { get }
    
    /// View that can be used to represent the view's interactable content. This
    /// allows for things like constant nodes to have dynamic content.
    var nodeContent: UIView? { get }
}

extension DisplayableNode {
    static var shortcutCharacter: String? { return nil }
    
    var nodeContent: UIView? { return nil }
}

class DisplayNode: UIView {
    static let titleHeight: CGFloat = 30
    static let propertyHeight: CGFloat = 44
    
    var node: DisplayableNode
    
    init(node: DisplayableNode) {
        // Save the node
        self.node = node
        
        // Determine the dimensions
        let leftItemCount = (node.inputTrigger != nil ? 1 : 0) + node.inputValues.count
        let rightItemCount = (node.outputTrigger != nil ? 1 : 0) + node.extraOutputTriggers.count + node.outputValues.count
        let propertiesHeight = CGFloat(max(leftItemCount, rightItemCount)) * DisplayNode.propertyHeight
        let totalHeight = DisplayNode.titleHeight + propertiesHeight
        
        super.init(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: 200, height: totalHeight)))
        
        // Create the view
        self.backgroundColor = UIColor.green
        
        // Add label
        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: frame.width, height: DisplayNode.titleHeight))
        titleLabel.text = node.id
        addSubview(titleLabel)
        
        // Add drag gesture
        let dragGesture = UIPanGestureRecognizer(target: self, action: #selector(panned(sender:)))
        addGestureRecognizer(dragGesture)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addProperty(parent: UIStackView, socket socketType: DisplayNodeSocketType, name: String, type: String?) {
        
    }
    
    @objc func panned(sender: UIPanGestureRecognizer) {
        if sender.state == .began || sender.state == .changed {
            // Bring to front
            superview?.bringSubview(toFront: self)
            
            // Drag the view
            let translation = sender.translation(in: self)
            center = CGPoint(x: center.x + translation.x, y: center.y + translation.y)
            sender.setTranslation(CGPoint.zero, in: self)
        }
    }
}
