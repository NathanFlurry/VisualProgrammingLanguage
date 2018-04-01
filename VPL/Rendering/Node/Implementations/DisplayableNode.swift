//
//  DisplayableNode.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

public let defaultNodes: [DisplayableNode.Type] = [
    EvalConstNode.self,
    IntConstNode.self,
    StringConstNode.self,
    
    DeclareVariableNode.self,
    SetVariableNode.self,
    GetVariableNode.self,
    IfNode.self,
    ForLoopNode.self,
    
    AddNode.self,
    SubtractNode.self,
    MultiplyNode.self,
    DivideNode.self,
    ModuloNode.self,
    EqualsNode.self,
    
    ArrayCreateNode.self,
    ArrayAppendNode.self,
    ArraySetAtNode.self,
    ArrayGetAtNode.self,
    ArrayRemoveAtNode.self,
    ArrayCountNode.self,
    
    DictionaryCreateNode.self,
    DictionarySetAtNode.self,
    DictionaryGetAtNode.self,
    DictionaryContainsKeyNode.self,
    DictionaryRemoveAtNode.self,
    
    PrintNode.self,
    SwapNode.self
]

public protocol DisplayableNode: Node {
    /// The character that can be drawn to spawn this node.
    static var shortcutCharacter: String? { get }
    
    /// If the node is deletable.
    static var destroyable: Bool { get }
    
    /// View that can be used to represent the view's interactable content. This
    /// allows for things like constant nodes to have dynamic content.
    var contentView: DisplayableNodeContentView? { get }
}

extension DisplayableNode {
    public static var shortcutCharacter: String? { return nil }
    
    public static var destroyable: Bool { return true }
    
    public var contentView: DisplayableNodeContentView? { return nil }
}
