//
//  NodeContentView.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

public class NodeContentView: UIView {
    /// If the view's touches are absorbed or if the display node can use drags
    /// and double taps on this view.
    public var absorbsTouches: Bool { return false }
    
    /// Set by the canvas to observe changes in the node's content.
    internal var onChangeCanvasCallback: (() -> Void)?
}

public class NodeContentEditorView<T>: NodeContentView {
    public typealias Callback = (T) -> Void
    
    /// Set by extensions on the node that implement `initContentView` for
    /// observing changes and updating the node's state.
    var onChangeCallback: Callback?
    
    /// Called by subclasses of `DisplayableNodeContentView` when the value
    /// changes.
    func contentValueChanged(value: T) {
        onChangeCallback?(value)
    }
}
