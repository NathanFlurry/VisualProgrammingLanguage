//
//  DisplayNodeSocket.swift
//  VPL
//
//  Created by Nathan Flurry on 3/13/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

enum DisplayNodeSocketType {
    case controlFlow(NodeTrigger), dataFlow(NodeValue)
    
    var socketColor: UIColor {
        switch self {
        case .controlFlow(_):
            return UIColor.orange
        case .dataFlow(_):
            return UIColor.blue
        }
    }
}

class DisplayNodeSocket: UIView {
    var type: DisplayNodeSocketType
    
    override var intrinsicContentSize: CGSize {
        return frame.size
    }
    
    init(frame: CGRect, type: DisplayNodeSocketType) {
        self.type = type
        
        super.init(frame: frame)
        
        backgroundColor = type.socketColor
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func contentCompressionResistancePriority(for axis: UILayoutConstraintAxis) -> UILayoutPriority {
        return .required
    }
    
    override func contentHuggingPriority(for axis: UILayoutConstraintAxis) -> UILayoutPriority {
        return .defaultLow
    }
}
