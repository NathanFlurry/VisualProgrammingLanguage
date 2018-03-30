//
//  DrawCanvasNodeView.swift
//  VPL
//
//  Created by Nathan Flurry on 3/29/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

enum DrawCanvasNodeInputType {
    case digits, alphanum
}

class DrawCanvasNodeView: DisplayableNodeContentView, UITextFieldDelegate {
    /// Reference to the node.
    weak var node: Node?
    
    /// The value from the view.
    var value: String = "" {
        didSet {
            // Render the value
            renderValue()
            
            // Notify change
            contentValueChanged()
        }
    }
    
    /// Input type for the view.
    let inputType: DrawCanvasNodeInputType
    
    /// How much space there is for the view to scroll to the next position.
    let scrollMarginWidth: CGFloat = 50
    
    /// Canvas for drawing.
    var canvas: DrawingCanvas
    
    /// Left anchor for the canvas.
    private var canvasLeftAnchor: NSLayoutConstraint!
    
    /// Timer for committing shortcuts
    var commitDrawingTimer: Timer?
    
    // Don't allow dragging
    override var absorbsTouches: Bool { return true }
    
    init(node: Node, defaultValue: String, inputType: DrawCanvasNodeInputType, minSize: CGSize = CGSize(width: 250, height: 80)) {
        self.node = node
        self.canvas = DrawingCanvas(frame: CGRect.zero)
        self.inputType = inputType
        
        super.init(frame: CGRect.zero)
        
        // Determine the dataset
        var dataset: OCRDataset
        switch inputType {
        case .digits:
            dataset = OCRDataset.digits
        case .alphanum:
            dataset = OCRDataset.alphanum
        }
        
        // Style the view
        layer.masksToBounds = true
        layer.borderColor = UIColor(white: 0.9, alpha: 1).cgColor
        layer.borderWidth = 1
        layer.cornerRadius = 4
        
        // Constrain view
        widthAnchor.constraint(greaterThanOrEqualToConstant: minSize.width).activate()
        heightAnchor.constraint(greaterThanOrEqualToConstant: minSize.height).activate()
        
        // Add drawing canvas
        addSubview(canvas)
        canvas.translatesAutoresizingMaskIntoConstraints = false
        self.canvasLeftAnchor = canvas.leftAnchor.constraint(equalTo: leftAnchor).activate()
        canvas.topAnchor.constraint(equalTo: topAnchor).activate()
        canvas.bottomAnchor.constraint(equalTo: bottomAnchor).activate()
        canvas.widthAnchor.constraint(equalToConstant: 2048).activate()
        
        // Handle canvas events
        canvas.brushWidth = 6
        canvas.onInputStart = {
            // Cancel the timer
            self.commitDrawingTimer?.invalidate()
            self.commitDrawingTimer = nil
        }
        canvas.onInputFinish = { strokeBox in
            // Move over the canvas if needed
            let strokeMax = strokeBox.maxX + self.canvasLeftAnchor.constant
            if strokeMax > self.frame.width - self.scrollMarginWidth {
                UIView.animate(withDuration: 0.1) {
                    self.canvasLeftAnchor.constant -= self.frame.width * 0.7
                    self.layoutIfNeeded()
                }
            }
            
            // Start a timer to commit the drawing
            let timer = Timer(timeInterval: 1.5, repeats: false) { _ in
                // Remove the timer
                self.commitDrawingTimer = nil
                
                // Go back to beginning of scroll
                UIView.animate(withDuration: 0.1) {
                    self.canvasLeftAnchor.constant = 0
                    self.layoutIfNeeded()
                }
                
                // Get the drawing
                guard let output = self.canvas.complete() else {
                    print("Drawing has no image.")
                    return
                }
                
                // Process
                try! OCRRequest(dataset: dataset, image: removeRetinaData(image: output), singleCharacter: false) { (result, breakdown) in
                    // Overlay the breakdown for debug info
                    self.canvas.overlayOCRBreakdown(breakdown: breakdown)
                    
                    // Save the value
                    self.value = result
                }
            }
            RunLoop.main.add(timer, forMode: RunLoopMode.defaultRunLoopMode)
            self.commitDrawingTimer = timer
        }
        
        // Display scroll margin
        let scrollMargin = UIView()
        scrollMargin.backgroundColor = UIColor(white: 0.5, alpha: 0.1)
        scrollMargin.isUserInteractionEnabled = false
        addSubview(scrollMargin)
        scrollMargin.translatesAutoresizingMaskIntoConstraints = false
        scrollMargin.rightAnchor.constraint(equalTo: rightAnchor).activate()
        scrollMargin.topAnchor.constraint(equalTo: topAnchor).activate()
        scrollMargin.bottomAnchor.constraint(equalTo: bottomAnchor).activate()
        scrollMargin.widthAnchor.constraint(equalToConstant: scrollMarginWidth).activate()
        
        // Add edit button
        let editButton = UIButton(type: UIButtonType.detailDisclosure)
        editButton.tintColor = .black
        editButton.addTarget(self, action: #selector(manualEdit(sender:)), for: .touchUpInside)
        addSubview(editButton)
        editButton.translatesAutoresizingMaskIntoConstraints = false
        editButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -8).activate()
        editButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8).activate()
        
        // Set the value
        value = defaultValue
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func manualEdit(sender: UIButton) {
        // Get the name
        var name: String = "Manual Edit"
        if let node = node {
            name = type(of: node).name
        }
        
        // Create the alert
        let alert = UIAlertController(title: name, message: nil, preferredStyle: .alert)
        alert.addTextField { textField in
            textField.text = self.value
            textField.clearButtonMode = .whileEditing
            textField.delegate = self // Filter digits for digit pad
            textField.keyboardType = self.inputType == .digits ? .decimalPad : .default
        }
        alert.addAction(UIAlertAction(
            title: "Cancel",
            style: .default,
            handler: { _ in
                
            }
        ))
        alert.addAction(UIAlertAction(
            title: "Done",
            style: .cancel,
            handler: { _ in
                let textField = alert.textFields![0]
                if let text = textField.text {
                    // Update the value
                    self.value = text
                }
            }
        ))
        UIApplication.shared.keyWindow?.rootViewController?.present(alert, animated: true)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // Allow clearing the text view
        if string.count == 0 {
            return true
        }
        
        // Only filter text fields with decimal pads
        guard textField.keyboardType == .decimalPad else { return true }
        
        guard let newString = (textField.text as NSString?)?.replacingCharacters(in: range, with: string) else {
            print("Failed to get text to filter digits in field.")
            return true
        }
        
        // Find the number of matches
        let expression = "^([0-9]+)?(\\.([0-9]{1,2})?)?$"
        let regex = try? NSRegularExpression(pattern: expression, options: .caseInsensitive)
        let numberOfMatches = regex?.numberOfMatches(in: newString, options: [], range: NSRange(location: 0, length: newString.count))
        return numberOfMatches != 0
    }
    
    private func renderValue() {
        
    }
}
