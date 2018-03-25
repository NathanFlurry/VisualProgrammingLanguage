//
//  CanvasViewController.swift
//  VPL
//
//  Created by Nathan Flurry on 3/13/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

class CanvasViewController: UIViewController {
    /// Canvas for all of the drawing for quick shortcuts
    var drawingCanvas: DrawingCanvas!
    
    /// Timer for committing shortcuts
    var commitDrawingTimer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
                try! OCRRequest(image: output) { (result, breakdown) in
                    self.drawingCanvas.overlayOCRBreakdown(breakdown: breakdown)
                }
            }
            RunLoop.main.add(timer, forMode: RunLoopMode.defaultRunLoopMode)
            self.commitDrawingTimer = timer
        }
        view.addSubview(drawingCanvas)
        
        // Add canvas
        let canvas = DisplayNodeCanvas()
        canvas.frame = view.bounds
//        view.addSubview(canvas)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillLayoutSubviews() {
        drawingCanvas.frame = view.bounds
    }

}
