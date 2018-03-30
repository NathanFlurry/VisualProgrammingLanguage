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

class DrawCanvasNodeView: DisplayableNodeContentView {
    /// The value from the view.
    var value: String = "" {
        didSet {
            renderValue()
        }
    }
    
    /// Canvas for drawing
    var canvas: DrawingCanvas
    
    /// Timer for committing shortcuts
    var commitDrawingTimer: Timer?
    
    // Don't allow dragging
    override var absorbsTouches: Bool { return true }
    
    init(defaultValue: String, inputType: DrawCanvasNodeInputType, minSize: CGSize = CGSize(width: 500, height: 80)) {
        canvas = DrawingCanvas(frame: CGRect.zero)
        
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
        layer.borderColor = UIColor(white: 0.9, alpha: 1).cgColor
        layer.borderWidth = 1
        layer.cornerRadius = 4
        
        // Constrain view
        widthAnchor.constraint(greaterThanOrEqualToConstant: minSize.width).activate()
        heightAnchor.constraint(greaterThanOrEqualToConstant: minSize.height).activate()
        
        // Add drawing canvas
        addSubview(canvas)
        canvas.translatesAutoresizingMaskIntoConstraints = false
        canvas.leftAnchor.constraint(equalTo: leftAnchor).activate()
        canvas.rightAnchor.constraint(equalTo: rightAnchor).activate()
        canvas.topAnchor.constraint(equalTo: topAnchor).activate()
        canvas.bottomAnchor.constraint(equalTo: bottomAnchor).activate()
        
        // Handle canvas events
        canvas.brushWidth = 6
        canvas.onInputStart = {
            // Cancel the timer
            self.commitDrawingTimer?.invalidate()
            self.commitDrawingTimer = nil
        }
        canvas.onInputFinish = {
            // Start a timer to commit the drawing
            let timer = Timer(timeInterval: 0.5, repeats: false) { _ in
                // Remove the timer
                self.commitDrawingTimer = nil
                
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
                    
                    // Call the callback
                    self.contentValueChanged()
                }
            }
            RunLoop.main.add(timer, forMode: RunLoopMode.defaultRunLoopMode)
            self.commitDrawingTimer = timer
        }
        
        // Set the value
        value = defaultValue
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func renderValue() {
        
    }
}
