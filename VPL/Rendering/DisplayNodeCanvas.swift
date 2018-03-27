//
//  DisplayNodeCanvas.swift
//  VPL
//
//  Created by Nathan Flurry on 3/26/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

class DisplayNodeCanvas: UIView {
    var nodes: [DisplayNode]
    
    override init(frame: CGRect) {
        // Create new node list
        nodes = []
        
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func insertNode(node: DisplayNode) {
        assert(!nodes.contains(node))
        
        // Insert into the list and view
        nodes.append(node)
        addSubview(node)
    }
}
