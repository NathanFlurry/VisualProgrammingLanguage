//
//  VFLCanvas.swift
//  VFL
//
//  Created by Nathan Flurry on 3/13/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

class VFLCanvas: UIView {
    init() {
        super.init(frame: CGRect.zero)
        
        // Add a few random nodes
        for _ in 0..<10 {
            
        }
        
        // Add a node adding gesture recognizer
        let addingRecognizer = UITapGestureRecognizer(target: self, action: #selector(addVFLNode(_:)))
        addingRecognizer.numberOfTapsRequired = 2
        addGestureRecognizer(addingRecognizer)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func addVFLNode(_ sender: UITapGestureRecognizer) {
        let position = sender.location(ofTouch: 0, in: self)
        let node = VFLNode(position: CGPoint(x: position.x, y: position.y))
        addSubview(node)
    }
}
