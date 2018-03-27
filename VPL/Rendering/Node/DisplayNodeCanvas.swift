//
//  DisplayNodeCanvas.swift
//  VPL
//
//  Created by Nathan Flurry on 3/26/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

class DisplayNodeCanvasOverlay: UIView {
    weak var canvas: DisplayNodeCanvas?
    
    init(frame: CGRect, canvas: DisplayNodeCanvas) {
        self.canvas = canvas
        
        super.init(frame: frame)
        
        isUserInteractionEnabled = false
        backgroundColor = .clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        guard let canvas = canvas else {
            print("No canvas to draw overlay.")
            return
        }
        guard let ctx = UIGraphicsGetCurrentContext() else {
            print("No graphics context.")
            return
        }
        
        for node in canvas.nodes {
            // Draw temp circle
            ctx.addEllipse(in: CGRect(x: node.frame.origin.x - 20, y: node.frame.origin.y - 20, width: 40, height: 40))
            ctx.setFillColor(red: 1, green: 1, blue: 0, alpha: 1)
            ctx.fillPath()
            
            // Draw path
            for socket in node.sockets {
                if let target = socket.draggingTarget {
                    guard let startPosition = socket.superview?.convert(socket.frame.origin, to: self) else {
                        print("Failed to convert start position for node socket.")
                        return
                    }
                    
                    ctx.setLineCap(.round)
                    ctx.setLineWidth(6)
                    ctx.setStrokeColor(red: 1, green: 0, blue: 0, alpha: 1)
                    ctx.addLines(between: [
                        CGPoint(x: startPosition.x + socket.frame.width / 2, y: startPosition.y + socket.frame.height / 2),
                        CGPoint(x: startPosition.x + target.x, y: startPosition.y + target.y)
                    ])
                    ctx.strokePath()
                }
            }
        }
    }
}

class DisplayNodeCanvas: UIView {
    var nodes: [DisplayNode]
    
    var overlay: DisplayNodeCanvasOverlay!
    
    override init(frame: CGRect) {
        // Create new node list
        nodes = []
        
        super.init(frame: frame)
        
        // Style the view
        backgroundColor = .clear
        
        // Add the overlay
        overlay = DisplayNodeCanvasOverlay(frame: bounds, canvas: self)
        overlay.autoresizingMask = UIViewAutoresizing.flexibleWidth.union(UIViewAutoresizing.flexibleHeight)
        addSubview(overlay)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        // Only allow user interaction if interacting with subviews. This way
        // the drawing canvas behind this view can still be interacted with.
        let result = super.hitTest(point, with: event)
        if result == self { return nil }
        return result
    }
    
    func insertNode(node: DisplayNode) {
        assert(!nodes.contains(node))
        assert(node.canvas == nil)
        
        // Set the canvas
        node.canvas = self
        
        // Insert into the list and view
        nodes.append(node)
        addSubview(node)
        
        // Perform updated
        updatedNode(node: node)
    }
    
    /// Called when any interaction occurs with the node and it needs to be
    /// updated.
    func updatedNode(node: DisplayNode) {
        // Bring node to front under overlay
        bringSubview(toFront: node)
        bringSubview(toFront: overlay)
        
        // Redraw overlay
        overlay.setNeedsDisplay()
    }
}
