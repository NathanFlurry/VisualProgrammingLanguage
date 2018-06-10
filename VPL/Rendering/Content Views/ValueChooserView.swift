//
//  ItemChooserView.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

public class ValueChooserView<T>: NodeContentEditorView<T> {
    /// The currently selected item.
    public var value: T
    
    /// Returns all of the options for this time chooser.
    var getValues: () -> [T]
    
    /// Returns a string label for an item.
    var valueLabel: (T) -> String
    
    private var selectionLabel: UILabel!
    private var pickButton: UIButton!
    
    public init(
        defaultValue: T,
        getValues: @escaping () -> [T],
        valueLabel: @escaping (T) -> String,
        callback: @escaping Callback
    ) {
        self.value = defaultValue
        self.getValues = getValues
        self.valueLabel = valueLabel
        
        super.init(frame: CGRect.zero)
        
        self.onChangeCallback = callback
        
        selectionLabel = UILabel(frame: CGRect.zero)
        selectionLabel.text = valueLabel(value)
        addSubview(selectionLabel)
        
        pickButton = UIButton(frame: CGRect.zero)
        pickButton.setTitle("Pick...", for: UIControl.State.normal)
        addSubview(pickButton)
        
        // Add constraints (this is ugly af... ew)
        selectionLabel.translatesAutoresizingMaskIntoConstraints = false
        pickButton.translatesAutoresizingMaskIntoConstraints = false
        
        selectionLabel.topAnchor.constraint(equalTo: topAnchor).activate()
        selectionLabel.bottomAnchor.constraint(equalTo: pickButton.topAnchor).activate()
        pickButton.bottomAnchor.constraint(equalTo: bottomAnchor).activate()
        selectionLabel.centerXAnchor.constraint(equalTo: centerXAnchor).activate()
        pickButton.centerXAnchor.constraint(equalTo: centerXAnchor).activate()
        
        // Add action to picked
        pickButton.addTarget(self, action: #selector(pickTouched(sender:)), for: UIControl.Event.touchUpInside)
    }
    
    public required init?(coder aDecoder: NSCoder) {
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
                self.value = value
                
                // Update label
                self.selectionLabel.text = label
                
                // Callbacks
                self.contentValueChanged(value: value)
            }
            alert.addAction(action)
        }
        
        // Present it
        parentViewController?.present(alert, animated: true)
    }
}
