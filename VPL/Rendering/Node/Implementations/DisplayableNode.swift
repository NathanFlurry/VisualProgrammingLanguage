//
//  DisplayableNode.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

protocol DisplayableNode: Node {
    /// The character that can be drawn to spawn this node.
    static var shortcutCharacter: String? { get }
    
    /// If the node is deletable.
    static var destroyable: Bool { get }
    
    /// View that can be used to represent the view's interactable content. This
    /// allows for things like constant nodes to have dynamic content.
    var contentView: DisplayableNodeContentView? { get }
}

extension DisplayableNode {
    static var shortcutCharacter: String? { return nil }
    
    static var destroyable: Bool { return true }
    
    var contentView: DisplayableNodeContentView? { return nil }
}
