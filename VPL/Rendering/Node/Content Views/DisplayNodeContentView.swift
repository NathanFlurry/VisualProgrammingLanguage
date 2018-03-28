//
//  DisplayNodeContentView.swift
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
