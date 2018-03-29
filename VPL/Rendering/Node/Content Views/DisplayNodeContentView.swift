//
//  DisplayNodeContentView.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

class DisplayableNodeContentView: UIView {
    /// Set by the graph to observe changes in the node's content.
    var onChangeCallback: (() -> Void)?
    
    /// Called by subclasses of `DisplayableNodeContentView` when the value
    /// changes.
    func contentValueChanged() {
        onChangeCallback?()
    }
}
