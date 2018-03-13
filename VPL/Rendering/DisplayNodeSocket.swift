//
//  DisplayNodeSocket.swift
//  VPL
//
//  Created by Nathan Flurry on 3/13/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

enum DisplayNodeSocketType {
    case controlFlow, dataFlow
    
    var socketColor: UIColor {
        switch self {
        case .controlFlow:
            return UIColor.orange
        case .dataFlow:
            return UIColor.blue
        }
    }
}

class DisplayNodeSocket: UIView {
    private static let socketSize: CGFloat = 16
    
    var type: DisplayNodeSocketType
    
    init(type: DisplayNodeSocketType) {
        self.type = type
        
        super.init(frame: CGRect(x: 0, y: 0, width: DisplayNodeSocket.socketSize, height: DisplayNodeSocket.socketSize))
        
        backgroundColor = type.socketColor
        layer.cornerRadius = 6
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
