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

class DisplayNode: UIView {
    var node: DisplayableNode
    var position: CGPoint
    
    init(node: DisplayableNode, position: CGPoint) {
        // Save the node
        self.node = node
        
        // Save the position
        self.position = position
        
        super.init(frame: CGRect(origin: position, size: CGSize(width: 100, height: 75)))
        
        // Create the view
        self.backgroundColor = UIColor.green
        
        // Add a socket
        let socket = DisplayNodeSocket(type: .controlFlow)
        socket.frame.origin = CGPoint(x: 30, y: 30)
        addSubview(socket)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
