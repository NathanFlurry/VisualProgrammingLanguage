//
//  DrawingCanvas.swift
//  VPL
//
//  Created by Nathan Flurry on 3/13/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

// TODO: Handle resizing
class DrawingCanvas: UIView {
    /// This image is drawn into while there is an active stroke. When the
    /// finger lifts, it commits to `imageView`.
    private let tempImageView: UIImageView = UIImageView()
    
    /// Current image data.
    private let imageView: UIImageView = UIImageView()
    
    /// Overlay image.
    public let overlayImageView: UIImageView = UIImageView()
    
    /// Brush thickness.
    var brushWidth: CGFloat = 12
    
    /// Last point at which the user touched. This is used to draw the path
    /// between the last point.
    private var lastPoint: CGPoint?
    
    /// Event that gets called on input
    public var onInputStart: (() -> Void)?
    public var onInputFinish: (() -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor(patternImage: UIImage(imageLiteralResourceName: "GeometryBackground"))
        
        imageView.frame = bounds
        tempImageView.frame = bounds
        overlayImageView.frame = bounds
        addSubview(imageView)
        addSubview(tempImageView)
        addSubview(overlayImageView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func complete() -> UIImage? {
        // TODO: Clip the text to visible
        
        // Get the result
        guard let transparentResult = imageView.image else {
            return nil
        }
        
        // Add a white background
        UIGraphicsBeginImageContextWithOptions(frame.size, false, 0)
        guard let context = UIGraphicsGetCurrentContext() else {
            return nil
        }
        context.setFillColor(gray: 1.0, alpha: 1.0)
        context.fill(imageView.bounds)
        
        // Draw the image on top of it
        transparentResult.draw(in: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height), blendMode: .normal, alpha: 1.0)
        
        // Get the final output
        let result = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        // Clear the image
        imageView.image = nil
        
        return result
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard lastPoint == nil, let touch = touches.first else {
            print("No touch or already has last point.")
            return
        }
        
        // Save the last position
        lastPoint = touch.location(in: self)
        
        // Call input start
        onInputStart?()
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
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let lastPoint = lastPoint, let touch = touches.first else {
            print("No touch or already missing last point.")
            return
        }
        
        // Draw a single point if just touched
        let currentPoint = touch.location(in: self)
        drawLine(from: lastPoint, to: currentPoint)
        
        // Begin new context
        UIGraphicsBeginImageContextWithOptions(frame.size, false, 0)
        
        // Fill a blank background
        guard let context = UIGraphicsGetCurrentContext() else {
            print("Failed to get graphics context.")
            UIGraphicsEndImageContext()
            return
        }
        context.clear(bounds)
        
        // Draw the images into the new context
        imageView.image?.draw(in: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height), blendMode: .normal, alpha: 1.0)
        tempImageView.image?.draw(in: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height), blendMode: .normal, alpha: 1.0)
        
        // Assign the image
        imageView.image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        // Clear the temp image view
        tempImageView.image = nil
        
        // Remove the last point
        self.lastPoint = nil
        
        // Call input finish
        onInputFinish?()
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        // Clear the temp image and ignroe the stroke
        tempImageView.image = nil
        
        // Remove the last point
        self.lastPoint = nil
    }
    
    /// Draw a line between two points.
    func drawLine(from fromPoint: CGPoint, to toPoint: CGPoint) {
        // Start a new context
        UIGraphicsBeginImageContextWithOptions(frame.size, false, 0)
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
        context.setStrokeColor(gray: 0, alpha: 1)
        context.setBlendMode(.normal)
        context.strokePath()
        
        // Render to the temp image
        tempImageView.image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
    }

    override func layoutSubviews() {
        // Resize image views
        imageView.frame = bounds
        tempImageView.frame = bounds
        overlayImageView.frame = bounds
        
        // Clear other images
        tempImageView.image = nil
        imageView.image = nil
        overlayImageView.image = nil
    }
}
