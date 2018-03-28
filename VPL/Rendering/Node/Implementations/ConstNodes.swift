//
//  ConstNodes.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

class ConstNode: DisplayableNode {
    static let shortcutCharacter: String? = "C"
    
    let id: String = "const"
    let name: String = "Constant"
    let outputValues: [NodeValue] = [NodeValue(id: "value", type: .any)]
    var contentView: UIView? { return valueView }
    
    var valueView: UIView
    
    required init() {
        valueView = UIView(frame: CGRect.zero)
        valueView.backgroundColor = .red
        valueView.heightAnchor.constraint(equalToConstant: 100).activate()
        
        self.setupConnections()
    }
    
    func assemble() -> String {
        return "<const>"
    }
}

