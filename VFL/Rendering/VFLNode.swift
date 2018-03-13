//
//  VFLNode.swift
//  VFL
//
//  Created by Nathan Flurry on 3/13/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

class VFLNode: UIView {
    var position: CGPoint
    
    init(position: CGPoint) {
        self.position = position
        
        super.init(frame: CGRect(origin: position, size: CGSize(width: 100, height: 75)))
        
        self.backgroundColor = UIColor.green
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
