//
//  ContentViewNode.swift
//  VPL
//
//  Created by Nathan Flurry on 6/9/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

public protocol ContentViewNode {
    /// Called manually by the node rendering component to set up the UI
    /// components.
    func initContentView() -> NodeContentView
}

extension IntConstNode: ContentViewNode {
    public func initContentView() -> NodeContentView {
        return DrawCanvasNodeView(node: self, defaultValue: "0", inputType: .digits) { newValue in
            // If has numbers, parse integer; otherwise, set to 0
            self.intConst = newValue.count > 0 ? Int(newValue)! : 0
        }
    }
}

extension StringConstNode: ContentViewNode {
    public func initContentView() -> NodeContentView {
        return DrawCanvasNodeView(node: self, defaultValue: "", inputType: .alphanum) { newValue in
            // Save new value
            self.stringConst = newValue
        }
    }
}

