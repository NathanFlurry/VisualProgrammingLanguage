//
//  DisplayableNode.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

class DisplayableNodeContentView: UIView {
    /// Overriden by `DisplayableNodeContentView` subclasses that returns
    /// the current value of the view.
    var value: String {
        fatalError("`DisplayableNodeContentView.value` is not implemented.")
    }
    
    /// Set by the graph to observe changes in the node's content.
    var onChangeCallback: ((String) -> Void)?
    
    /// Called by subclasses of `DisplayableNodeContentView` when the value
    /// changes.
    func contentValueChanged() {
        onChangeCallback?(value)
    }
}

protocol DisplayableNode: Node {
    /// The character that can be drawn to spawn this node.
    static var shortcutCharacter: String? { get }
    
    /// View that can be used to represent the view's interactable content. This
    /// allows for things like constant nodes to have dynamic content.
    var contentView: DisplayableNodeContentView? { get }
}

extension DisplayableNode {
    static var shortcutCharacter: String? { return nil }
    
    var contentView: DisplayableNodeContentView? { return nil }
}
