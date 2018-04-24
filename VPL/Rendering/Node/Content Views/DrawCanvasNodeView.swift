//
//  DrawCanvasNodeView.swift
//  VPL
//
//  Created by Nathan Flurry on 3/29/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

public enum DrawCanvasNodeInputType {
    case digits, alphanum
}

public class DrawCanvasNodeView: DisplayableNodeContentView, UITextFieldDelegate {
    /// Reference to the node.
    weak var node: Node?

    /// The value from the view.
    public var value: String = "" {
        didSet {
            // Render the value
            renderValue()

            // Notify change
            contentValueChanged()
        }
    }

    /// Input type for the view.
    let inputType: DrawCanvasNodeInputType

    /// Label indicating the current value.
    let valueLabel: UILabel

    /// How much space there is for the view to scroll to the next position.
    let scrollMarginWidth: CGFloat = 50

    /// View that holds the canvas.
    var canvasContainer: UIView

    /// Canvas for drawing.
    var canvas: DrawingCanvas

    /// Left anchor for the canvas.
    private var canvasLeftAnchor: NSLayoutConstraint!

    /// Timer for committing shortcuts
    private var commitDrawingTimer: Timer?

    // Don't allow dragging
    override var absorbsTouches: Bool { return true }

    public init(node: Node, defaultValue: String, inputType: DrawCanvasNodeInputType, minSize: CGSize = CGSize(width: 250, height: 85)) {
        self.node = node
        self.inputType = inputType
        self.value = defaultValue

        self.canvasContainer = UIView()
        self.canvas = DrawingCanvas(frame: CGRect.zero)
        self.valueLabel = UILabel()

        super.init(frame: CGRect.zero)

        // Determine the dataset
        var dataset: OCRDataset
        switch inputType {
        case .digits:
            dataset = OCRDataset.digits
        case .alphanum:
            dataset = OCRDataset.alphanum
        }

        // Constrain view
        widthAnchor.constraint(greaterThanOrEqualToConstant: minSize.width).activate()
        canvasContainer.heightAnchor.constraint(greaterThanOrEqualToConstant: minSize.height).activate()

        // Create the canvas container
        canvasContainer.layer.masksToBounds = true
        canvasContainer.layer.borderColor = UIColor(white: 0.9, alpha: 1).cgColor
        canvasContainer.layer.borderWidth = 1
        canvasContainer.layer.cornerRadius = 4
        addSubview(canvasContainer)
        canvasContainer.translatesAutoresizingMaskIntoConstraints = false
        canvasContainer.leftAnchor.constraint(equalTo: leftAnchor).activate()
        canvasContainer.rightAnchor.constraint(equalTo: rightAnchor).activate()
        canvasContainer.topAnchor.constraint(equalTo: topAnchor).activate()

        // Add drawing canvas
        canvasContainer.addSubview(canvas)
        canvas.translatesAutoresizingMaskIntoConstraints = false
        self.canvasLeftAnchor = canvas.leftAnchor.constraint(equalTo: canvasContainer.leftAnchor).activate()
        canvas.topAnchor.constraint(equalTo: canvasContainer.topAnchor).activate()
        canvas.bottomAnchor.constraint(equalTo: canvasContainer.bottomAnchor).activate()
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
                    self.canvasContainer.layoutIfNeeded()
                }
            }

            // Start a timer to commit the drawing
            let timer = Timer(timeInterval: 1.5, repeats: false) { _ in
                // Remove the timer
                self.commitDrawingTimer = nil

                // Go back to beginning of scroll
                UIView.animate(withDuration: 0.1) {
                    self.canvasLeftAnchor.constant = 0
                    self.canvasContainer.layoutIfNeeded()
                }

                // Get the drawing
                guard let output = self.canvas.complete() else {
                    print("Drawing has no image.")
                    return
                }

                // Process
                try! OCRRequest(dataset: dataset, image: removeRetinaData(image: output), singleCharacter: false) { (result, breakdown) in
                    // Overlay the breakdown for debug info
//                    self.canvas.overlayOCRBreakdown(breakdown: breakdown)

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
        canvasContainer.addSubview(scrollMargin)
        scrollMargin.translatesAutoresizingMaskIntoConstraints = false
        scrollMargin.rightAnchor.constraint(equalTo: canvasContainer.rightAnchor).activate()
        scrollMargin.topAnchor.constraint(equalTo: canvasContainer.topAnchor).activate()
        scrollMargin.bottomAnchor.constraint(equalTo: canvasContainer.bottomAnchor).activate()
        scrollMargin.widthAnchor.constraint(equalToConstant: scrollMarginWidth).activate()

        // Add edit button
        let editButton = UIButton(type: UIButtonType.detailDisclosure)
        editButton.tintColor = .black
        editButton.addTarget(self, action: #selector(manualEdit(sender:)), for: .touchUpInside)
        addSubview(editButton)
        editButton.translatesAutoresizingMaskIntoConstraints = false
        editButton.rightAnchor.constraint(equalTo: canvasContainer.rightAnchor, constant: -8).activate()
        editButton.bottomAnchor.constraint(equalTo: canvasContainer.bottomAnchor, constant: -8).activate()

        // Add value view
        valueLabel.numberOfLines = 0
        valueLabel.textAlignment = .center
        valueLabel.font = UIFont.codeFont()
        addSubview(valueLabel)
        valueLabel.translatesAutoresizingMaskIntoConstraints = false
        valueLabel.leftAnchor.constraint(equalTo: leftAnchor).activate()
        valueLabel.rightAnchor.constraint(equalTo: rightAnchor).activate()
        valueLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8).activate()
        valueLabel.topAnchor.constraint(equalTo: canvasContainer.bottomAnchor, constant: 16).activate()

        // Render the new value
        renderValue()
    }

    public required init?(coder aDecoder: NSCoder) {
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
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        alert.addAction(UIAlertAction(
            title: "Done",
            style: .default,
            handler: { _ in
                let textField = alert.textFields![0]
                if let text = textField.text {
                    // Update the value
                    self.value = text
                }
            }
        ))
        parentViewController?.present(alert, animated: true)
    }

    public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
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
        valueLabel.text = value
    }
}
