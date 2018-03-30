//
//  DisplayNodeCanvas.swift
//  VPL
//
//  Created by Nathan Flurry on 3/26/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

class DisplayNodeCanvas: UIScrollView, UIScrollViewDelegate {
    /// List of all nodes in the canvas.
    var nodes: [DisplayNode]
    
    /// View that is drawn behind all other views.
    var backgroundView: UIView? {
        didSet {
            // Remove the old value
            oldValue?.removeFromSuperview()
            
            // Add the new vlaue
            if let backgroundView = backgroundView {
                addSubview(backgroundView)
                sendSubview(toBack: backgroundView)
            }
        }
    }
    
    /// View that overlays the canvas and draws connections between nodes.
    private var overlayView: DisplayNodeCanvasOverlay!
    
    /// Called every time the nodes are updated.
    var updateCallback: (() -> Void)?
    
    /// The starting node that all other nodes build off of.
    var baseNode: DisplayNode!
    
    override init(frame: CGRect) {
        // Create new node list
        nodes = []
        
        super.init(frame: frame)
        
        // Configure the scroll view to be large & only allow panning with two
        // touches
        delegate = self
        decelerationRate = UIScrollViewDecelerationRateFast
        contentSize = CGSize(width: 10000, height: 10000)
        for recognizer in gestureRecognizers ?? [] {
            if let recognizer = recognizer as? UIPanGestureRecognizer {
                // Only allow scrolling with two fingers
                recognizer.minimumNumberOfTouches = 2
                recognizer.maximumNumberOfTouches = 2
            } else if NSStringFromClass(type(of: recognizer)) == "UIScrollViewDelayedTouchesBeganGestureRecognizer" {
                // Don't delay touches to the drawing canvas
                recognizer.isEnabled = false
            }
        }
        
        // Style the view
        clipsToBounds = true
        backgroundColor = .clear
        
        // Add the overlay
        overlayView = DisplayNodeCanvasOverlay(frame: bounds, canvas: self)
        addSubview(overlayView)
        
        // Create and insert the display node
        baseNode = DisplayNode(node: BaseNode())
        insert(node: baseNode, at: CGPoint(x: contentSize.width / 2, y: contentSize.height / 2))
        
        // Scroll to the center
        contentOffset = CGPoint(x: contentSize.width / 2 - frame.width / 2, y: contentSize.height / 2 - frame.width / 2)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        // Resize all views
        backgroundView?.frame.size = bounds.size
        overlayView.frame.size = bounds.size
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        // Move the background and overlay with the view
        backgroundView?.frame.origin = scrollView.contentOffset
        overlayView.frame.origin = scrollView.contentOffset
        
        // Update overlay
        updateState()
    }
    
    /// Assembles all of the code.
    func assemble() -> String {
        var output = ""
        
        // Assemble each function
        for node in nodes {
            if let node = node.node as? BaseNode {
                output += node.assemble()
                
                output += "\n\n"
            }
        }
        
        return output
    }
    
    /// Adds a node to the canvas.
    func insert(node: DisplayNode, at position: CGPoint, absolutePosition: Bool = false) {
        assert(!nodes.contains(node))
        assert(node.canvas == nil)
        
        // Set the canvas
        node.canvas = self
        
        // Add callabck on content change
        node.node.contentView?.onChangeCallback = {
            self.updated(node: node)
        }
        
        // Insert into the list and view
        nodes.append(node)
        addSubview(node)
        
        // Position the node
        node.layoutIfNeeded()
        node.center = position
        if !absolutePosition {
            node.frame.origin.x += contentOffset.x
            node.frame.origin.y += contentOffset.y
        }
        
        // Perform updated
        updated(node: node)
    }
    
    /// Called when any interaction occurs with the node and it needs to be
    /// updated.
    func updated(node: DisplayNode) {
        // Bring node to front under overlay
        bringSubview(toFront: node)
        bringSubview(toFront: overlayView)
        
        // Update this canvas' state
        updateState()
        
        // Update the state
        node.updateState()
        
        // Call update
        updateCallback?()
    }
    
    /// Removes a ndoe from the canvas.
    func remove(node: DisplayNode) {
        assert(nodes.contains(node))
        assert(node.canvas == self)
        
        // Make sure the node is destroyable
        guard type(of: node.node).destroyable else {
            return
        }
        
        // Remove the node from the list
        guard let nodeIndex = nodes.index(where: { $0 === node }) else {
            print("Failed to find node in list.")
            return
        }
        nodes.remove(at: nodeIndex)
        
        // Add destory animation
        UIView.animate(
            withDuration: 0.2,
            animations: {
                node.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                node.alpha = 0
            },
            completion: { _ in
                node.removeFromSuperview()
            }
        )
        
        // Destroy the node
        node.node.destroy()
        
        // Update
        updateState()
        updateCallback?()
    }
    
    /// Creates a connection between sockets based on the current dragging
    /// position.
    func finishConnection(socket: DisplayNodeSocket) {
        guard let target = socket.draggingTarget else {
            print("No target for socket.")
            return
        }
        
        // Find a socket dislplay that matches the point
        nodeLoop: for node in nodes {
            if node.point(inside: node.convert(target, from: socket), with: nil) {
                for targetSocket in node.sockets {
                    if targetSocket.point(inside: targetSocket.convert(target, from: socket), with: nil) {
                        // Attempt to connect the sockets
                        if socket.canConnectTo(socket: targetSocket) {
                            socket.connect(to: targetSocket)
                            break nodeLoop
                        }
                    }
                }
            }
        }
        
        // Remove the target
        socket.draggingTarget = nil
        
        // Update
        updateCallback?()
    }
    
    func updateState() {
        // Update overlay
        overlayView.setNeedsDisplay()
        
        // This does not notify the child node's state, since that's an
        // expensive operatino and should rarely update all at once.
    }
}
