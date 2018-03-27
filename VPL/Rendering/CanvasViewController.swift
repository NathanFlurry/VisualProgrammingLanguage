//
//  CanvasViewController.swift
//  VPL
//
//  Created by Nathan Flurry on 3/13/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

class CanvasViewController: UIViewController {
    /// View nodes that can be created.
    var spawnableNodes: [DisplayableNode.Type] = [] {
        willSet {
            // Make sure there are no duplicate shortcuts
            for (i, node) in newValue.enumerated() {
                if let shortcut = node.shortcutCharacter {
                    for j in (i+1)..<newValue.count {
                        assert(shortcut != newValue[j].shortcutCharacter)
                    }
                }
            }
        }
    }
    
    /// Canvas that holds all of the nodes
    var nodeCanvas: DisplayNodeCanvas!
    
    /// Canvas for all of the drawing for quick shortcuts
    var drawingCanvas: DrawingCanvas!
    
    /// Timer for committing shortcuts
    var commitDrawingTimer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add the node canvas
        nodeCanvas = DisplayNodeCanvas(frame: CGRect.zero)
        
        // Add drawing canvas
        drawingCanvas = DrawingCanvas(frame: CGRect.zero)
        drawingCanvas.onInputStart = {
            // Cancel the timer
            self.commitDrawingTimer?.invalidate()
            self.commitDrawingTimer = nil
        }
        drawingCanvas.onInputFinish = {
            // Start a timer to commit the drawing
            let timer = Timer(timeInterval: 0.5, repeats: false) { _ in
                // Remove the timer
                self.commitDrawingTimer = nil
                
                // Get the drawing
                guard let output = self.drawingCanvas.complete() else {
                    print("Drawing has no image.")
                    return
                }
                
                // Process
                try! OCRRequest(image: output, singleCharacter: true) { (result, breakdown) in
                    assert(breakdown.count == 1)
                    
                    // Get the character's center
                    guard let firstBreakdown = breakdown.first, let charResult = firstBreakdown else {
                        print("Failed to get first char breakdown.")
                        return
                    }
                    guard case let .some(character, _, charBox) = charResult else {
                        print("Could not get char box.")
                        return
                    }
                    let charCenter = CGPoint(x: charBox.midX, y: charBox.midY)
                    
                    // Create the node
                    self.createNode(character: character, position: charCenter)
                    
                    // Overlay the breakdown for debug info
                    self.drawingCanvas.overlayOCRBreakdown(breakdown: breakdown)
                }
            }
            RunLoop.main.add(timer, forMode: RunLoopMode.defaultRunLoopMode)
            self.commitDrawingTimer = timer
        }
        
        // Add the views
        view.addSubview(drawingCanvas)
        view.addSubview(nodeCanvas)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillLayoutSubviews() {
        nodeCanvas.frame = view.bounds
        drawingCanvas.frame = view.bounds
    }

    @discardableResult
    func createNode(character: String, position: CGPoint) -> DisplayNode? {
        // Find the node
        guard let nodeType = spawnableNodes.first(where: { $0.shortcutCharacter == character }) else {
            return nil
        }
        
        // Create the node
        let node = nodeType.init()
        
        // Create and insert the display node
        let displayNode = DisplayNode(node: node)
        displayNode.center = position
        nodeCanvas.insertNode(node: displayNode)
        
        return displayNode
    }
}
