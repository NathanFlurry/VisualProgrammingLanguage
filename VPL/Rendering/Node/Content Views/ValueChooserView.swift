//
//  ItemChooserView.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

class ValueChooserView<T>: DisplayableNodeContentView {
    /// The currently selected item.
    var selectedValue: T
    
    /// Returns all of the options for this time chooser.
    var getValues: () -> [T]
    
    /// Returns a string label for an item.
    var valueLabel: (T) -> String
    
    /// Called when an value is chosen.
    var chooseCallback: (T) -> Void
    
    private var selectionLabel: UILabel!
    private var pickButton: UIButton!
    
    init(
        defaultValue: T,
        getValues: @escaping () -> [T],
        valueLabel: @escaping (T) -> String,
        chooseCallback: @escaping (T) -> Void = { _ in }
    ) {
        self.selectedValue = defaultValue
        self.getValues = getValues
        self.valueLabel = valueLabel
        self.chooseCallback = chooseCallback
        
        super.init(frame: CGRect.zero)
        
        selectionLabel = UILabel(frame: CGRect.zero)
        selectionLabel.text = valueLabel(selectedValue)
        addSubview(selectionLabel)
        
        pickButton = UIButton(frame: CGRect.zero)
        pickButton.titleLabel?.text = "Pick..."
        addSubview(pickButton)
        
        // Add constraints (this is ugly af... ew)
        selectionLabel.translatesAutoresizingMaskIntoConstraints = false
        pickButton.translatesAutoresizingMaskIntoConstraints = false
        
        selectionLabel.topAnchor.constraint(equalTo: topAnchor).activate()
        selectionLabel.bottomAnchor.constraint(equalTo: pickButton.topAnchor).activate()
        pickButton.bottomAnchor.constraint(equalTo: bottomAnchor).activate()
        selectionLabel.centerXAnchor.constraint(equalTo: centerXAnchor).activate()
        pickButton.centerXAnchor.constraint(equalTo: centerXAnchor).activate()
        
//        selectionLabel.rightAnchor.constraint(equalTo: rightAnchor).activate()
//        pickButton.rightAnchor.constraint(equalTo: rightAnchor).activate()
//        selectionLabel.topAnchor.constraint(equalTo: topAnchor).activate()
//        pickButton.topAnchor.constraint(equalTo: topAnchor).activate()
//        selectionLabel.bottomAnchor.constraint(equalTo: bottomAnchor).activate()
//        pickButton.bottomAnchor.constraint(equalTo: bottomAnchor).activate()
//        selectionLabel.leftAnchor.constraint(equalTo: leftAnchor).activate()
//        pickButton.leftAnchor.constraint(equalTo: leftAnchor).activate()
//        selectionLabel.bottomAnchor.constraint(equalTo: pickButton.topAnchor).activate()
        
        // Add action to picked
        pickButton.addTarget(self, action: #selector(pickTouched(sender:)), for: .touchUpInside)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func pickTouched(sender: UIButton) {
        // Create the controller
        let alert = UIAlertController(
            title: "Spawn Node",
            message: nil,
            preferredStyle: .actionSheet
        )
        
        
        // Configure the popover
        alert.popoverPresentationController?.sourceView = sender
        alert.popoverPresentationController?.sourceRect = sender.bounds
        
        // Display the nodes
        for value in getValues() {
            // Create an action to spawn the node
            let label = valueLabel(value)
            let action = UIAlertAction(title: label, style: .default) { _ in
                // Set selected item
                self.selectedValue = value
                
                // Update label
                self.selectionLabel.text = label
                
                // Callbacks
                self.chooseCallback(value)
                self.contentValueChanged()
            }
            alert.addAction(action)
        }
        
        // Present it
        UIApplication.shared.keyWindow?.rootViewController?.present(alert, animated: true)
    }
}
