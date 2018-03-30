//
//  ArrayNodes.swift
//  VPL
//
//  Created by Nathan Flurry on 3/30/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import Foundation

class CreateArrayNode: DisplayableNode {
    static let shortcutCharacter: String? = "A"
    
    static let id: String = "create-array"
    static let name: String = "Create Array"
    var output: NodeOutput = .value(OutputValue(type: .generic("Array", [.unknown])))
    var contentView: DisplayableNodeContentView? { return input }
    
    var input: GenericInputView!
    
    required init() {
        input = GenericInputView(node: self, fields: [
            GenericInputViewField(name: "Content Type", defaultValue: "Int")
        ])
        
        self.setupConnections()
    }
    
    func assemble() -> String {
        return "[\(input.fields[0].value)]()"
    }
}
