//
//  VariableChooserView.swift
//  VPL
//
//  Created by Nathan Flurry on 3/29/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

class VariableChooserView: ValueChooserView<VariableInstance?> {
    weak var owner: Node!
    
    init(owner: Node) {
        self.owner = owner
        
        super.init(
            defaultValue: nil,
            getValues: { owner.availableVariables.map { Optional.some($0) } },
            valueLabel: { $0?.name ?? "No Variable" }
        )
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
