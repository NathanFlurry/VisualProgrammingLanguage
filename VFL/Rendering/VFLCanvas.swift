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
            let node = VFLNode(position: CGPoint(x: randomFloat() * 500, y: randomFloat() * 500))
            addSubview(node)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
