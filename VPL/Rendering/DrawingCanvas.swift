//
//  DrawingCanvas.swift
//  VPL
//
//  Created by Nathan Flurry on 3/13/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

class DrawingCanvas: UIView {
    /// This image is drawn into while there is an active stroke. When the
    /// finger lifts, it commits to `imageView`.
    private let tempImageView: UIImageView = UIImageView()
    
    /// Current image data.
    private let imageView: UIImageView = UIImageView()
    
    /// Brush thickness
    var brushWidth: CGFloat = 5
    
    /// Last point at which the user touched. This is used to draw the path
    /// between the last point.
    private var lastPoint: CGPoint?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.black
        
        tempImageView.frame = bounds
        imageView.frame = bounds
        addSubview(tempImageView)
        addSubview(imageView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func complete() -> UIImage {
        // Return the image from the bounds of all the data
        // Fade the image and remove from superview when gone
        // Create new image
        
        return UIImage()
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard lastPoint == nil, let touch = touches.first else {
            print("No touch or already has last point.")
            return
        }
        
        // Save the last position
        lastPoint = touch.location(in: self)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let lastPoint = lastPoint, let touch = touches.first else {
            print("No touch or already missing last point.")
            return
        }
        
        // Draw a line between the previous and current point
        let currentPoint = touch.location(in: self)
        drawLine(from: lastPoint, to: currentPoint)
        
        // Save the point
        self.lastPoint = currentPoint
    }
    
    func handledTouchesFinished(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let lastPoint = lastPoint, let touch = touches.first else {
            print("No touch or already missing last point.")
            return
        }
        
        // Draw a single point if just touched
        let currentPoint = touch.location(in: self)
        drawLine(from: lastPoint, to: currentPoint)
        
        // Draw to the final image
        UIGraphicsBeginImageContext(imageView.frame.size)
        imageView.image?.draw(in: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height), blendMode: .normal, alpha: 1.0)
        tempImageView.image?.draw(in: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height), blendMode: .normal, alpha: 1.0)
        imageView.image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        // Clear the temp image view
        tempImageView.image = nil
        
        // Remove the last point
        self.lastPoint = nil
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        handledTouchesFinished(touches, with: event)
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        handledTouchesFinished(touches, with: event)
    }
    
    /// Draw a line between two points.
    func drawLine(from fromPoint: CGPoint, to toPoint: CGPoint) {
        UIGraphicsBeginImageContext(frame.size)
        guard let context = UIGraphicsGetCurrentContext() else {
            print("Failed to get graphics context.")
            UIGraphicsEndImageContext()
            return
        }
        tempImageView.image?.draw(in: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height))
        
        // Draw the line
        context.move(to: fromPoint)
        context.addLine(to: toPoint)
        
        // Stroke the path
        context.setLineCap(.round)
        context.setLineWidth(brushWidth)
        context.setStrokeColor(red: 1, green: 1, blue: 1, alpha: 1)
        context.setBlendMode(.normal)
        context.strokePath()
        
        // Render to the temp image
        tempImageView.image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
    }

}
