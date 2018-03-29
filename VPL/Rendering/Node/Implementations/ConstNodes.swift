//
//  ConstNodes.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

class EvalConstNode: DisplayableNode {
    static let shortcutCharacter: String? = "C"
    
    static let id: String = "evalconst"
    static let name: String = "Eval Constant"
    var output: NodeOutput = .value(OutputValue(type: .unknown))
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

class ConstNode: DisplayableNode { // TEMP: Need const for each type
    static let shortcutCharacter: String? = "C"
    
    static let id: String = "const"
    static let name: String = "Constant"
    var output: NodeOutput = .value(OutputValue(type: .unknown))
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
