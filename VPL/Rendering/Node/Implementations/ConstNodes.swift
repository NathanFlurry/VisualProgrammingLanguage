//
//  ConstNodes.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

class EvalConstNode: DisplayableNode {
    static let shortcutCharacter: String? = "Z"
    
    let id: String = "eval-const"
    let name: String = "Eval Constant"
    let outputValues: [NodeValue] = [NodeValue(id: "value", type: .any)]
    var contentView: DisplayableNodeContentView? { return inputView }
    
    let inputView: GenericInputView
    
    required init() {
        inputView = GenericInputView(frame: CGRect.zero, defaultValue: "0")
        
        self.setupConnections()
    }
    
    func assemble() -> String {
        return "(\(inputView.value))"
    }
}

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

