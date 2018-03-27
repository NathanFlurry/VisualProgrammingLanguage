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
    var node: DisplayableNode
    
    init(node: DisplayableNode) {
        // Save the node
        self.node = node
        
        super.init(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: 100, height: 75)))
        
        // Create the view
        self.backgroundColor = UIColor.green
        
        // Add label
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: frame.width, height: 30))
        label.text = node.id
        addSubview(label)
        
        // Add a socket
        let socket = DisplayNodeSocket(type: .controlFlow)
        socket.frame.origin = CGPoint(x: 30, y: 30)
        addSubview(socket)
        
        // Add drag gesture
        let dragGesture = UIPanGestureRecognizer(target: self, action: #selector(panned(sender:)))
        addGestureRecognizer(dragGesture)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func panned(sender: UIPanGestureRecognizer) {
        if sender.state == .began || sender.state == .changed {
            let translation = sender.translation(in: self)
            center = CGPoint(x: center.x + translation.x, y: center.y + translation.y)
            sender.setTranslation(CGPoint.zero, in: self)
        }
    }
}
