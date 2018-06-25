//
//  BaseNode.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

class BaseNode: DisplayableNode {
    static let destroyable: Bool = false

    static let id: String = "start"
    static let name: String = "Start"
    var output: NodeOutput = .triggers([OutputTrigger()])

    required init() {
        self.setupConnections()
    }

    func assemble() -> String {
        return assembleOutputTrigger()
    }
}
