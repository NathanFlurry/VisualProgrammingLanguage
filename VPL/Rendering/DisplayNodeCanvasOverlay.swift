//
//  DisplayNodeCanvasOverlay.swift
//  VPL
//
//  Created by Nathan Flurry on 3/29/18.
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
        
        // Draw all node connections
        for node in canvas.nodes {
            for socket in node.sockets {
                // Draw a connection
                if let target = socket.draggingTarget {
                    // Draw a line to where the user is currently dragging
                    let startPosition = socket.convert(CGPoint.zero, to: self)
                    drawSocketConnection(
                        context: ctx,
                        fromInput: socket.type.isInput,
                        from: CGPoint(x: startPosition.x + socket.frame.width / 2, y: startPosition.y + socket.frame.height / 2),
                        to: CGPoint(x: startPosition.x + target.x, y: startPosition.y + target.y),
                        color: socket.type.connectionColor,
                        label: nil
                    )
                } else if let targetSocket = findTarget(forSocketType: socket.type) {
                    // Draw a line between the sockets
                    let startPosition = socket.convert(CGPoint.zero, to: self)
                    let endPosition = targetSocket.convert(CGPoint.zero, to: self)
                    drawSocketConnection(
                        context: ctx,
                        fromInput: socket.type.isInput,
                        from: CGPoint(x: startPosition.x + socket.frame.width / 2, y: startPosition.y + socket.frame.height / 2),
                        to: CGPoint(x: endPosition.x + targetSocket.frame.width / 2, y: endPosition.y + targetSocket.frame.height / 2),
                        color: socket.type.connectionColor,
                        label: socket.connectionLabel()
                    )
                }
            }
        }
        
        // Draw socket caps over where the lines meet; this makes it so it
        // doesn't feel clunky when multiple lines join at the same position
        for node in canvas.nodes {
            for socket in node.sockets {
                // Draw the cap if it has a connection
                if socket.draggingTarget != nil || findTarget(forSocketType: socket.type) != nil {
                    let centerPosition = socket.convert(CGPoint(x: socket.frame.width / 2, y: socket.frame.height / 2), to: self)
                    drawSocketCap(context: ctx, center: centerPosition, color: socket.type.connectionColor)
                }
            }
        }
    }
    
    /// Finds a display node socket that matches a socket type.
    func findTarget(forSocketType socketType: DisplayNodeSocketType) -> DisplayNodeSocket? {
        guard let canvas = canvas else {
            print("Missing canvas.")
            return nil
        }
        
        // Find a socket that matches the target of this view
        for node in canvas.nodes {
            for otherSocket in node.sockets {
                switch socketType {
                case .inputTrigger(let trigger):
                    if case let .outputTrigger(otherTrigger) = otherSocket.type {
                        if trigger.target === otherTrigger { return otherSocket }
                    }
                case .outputTrigger(let trigger):
                    if case let .inputTrigger(otherTrigger) = otherSocket.type {
                        if trigger.target === otherTrigger { return otherSocket }
                    }
                case .inputValue(let value):
                    switch value.target {
                    case .constant(_):
                        return nil
                    case .value(let value):
                        if case let .outputValue(otherValue) = otherSocket.type, value === otherValue {
                            return otherSocket
                        }
                    case .variable(let variable):
                        if
                            case let .outputTrigger(otherTrigger) = otherSocket.type,
                            otherTrigger.exposedVariables.contains(where: { $0 === variable })
                        {
                            return otherSocket
                        }
                    }
                case .outputValue(let value):
                    if case let .inputValue(otherValue) = otherSocket.type {
                        if value.target === otherValue { return otherSocket }
                    }
                }
            }
        }
        
        // No match
        return nil
    }
    
    /// Draws a line between two points indicating a socket position
    func drawSocketConnection(context ctx: CGContext, fromInput: Bool, from: CGPoint, to: CGPoint, color: UIColor, label: String?) {
        // Draw the line
        ctx.setLineCap(.round)
        ctx.setLineWidth(8)
        ctx.setStrokeColor(color.cgColor)
        ctx.move(to: from)
        let controlDistance: CGFloat = 75 * (fromInput ? -1 : 1)
        ctx.addCurve(to: to, control1: CGPoint(x: from.x + controlDistance, y: from.y), control2: CGPoint(x: to.x - controlDistance, y: to.y))
        ctx.strokePath()
        
        if let label = label {
            // Get label metrics
            let lineCenter = CGPoint(x: (from.x + to.x) / 2, y: (from.y + to.y) / 2)
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.alignment = .center
            let attributes = [
                NSAttributedString.Key.font: UIFont.codeFont(),
                NSAttributedString.Key.paragraphStyle: paragraphStyle
            ]
            let size = (label as NSString).size(withAttributes: attributes)
            
            // Draw a shape behind the label
            var paddedSize = CGSize(width: size.width, height: size.height + 8)
            paddedSize.width += paddedSize.height / 2 // Make the caps go beyond the text
            let roundedRect = UIBezierPath(
                roundedRect: CGRect(
                    x: lineCenter.x - paddedSize.width / 2, y: lineCenter.y - paddedSize.height / 2,
                    width: paddedSize.width, height: paddedSize.height
                ),
                cornerRadius: paddedSize.height / 2
            )
            ctx.setFillColor(gray: 1.0, alpha: 0.7)
            roundedRect.fill()
            
            // Draw the label
            (label as NSString).draw(
                in: CGRect(x: lineCenter.x - size.width / 2, y: lineCenter.y - size.height / 2, width: size.width, height: size.height),
                withAttributes: attributes
            )
        }
    }
    
    /// Draws a cap over the socket.
    func drawSocketCap(context ctx: CGContext, center: CGPoint, color: UIColor) {
        // Draw circle over the cap of the base node
        let capSize: CGFloat = 12
        ctx.setFillColor(color.cgColor)
        ctx.addEllipse(in: CGRect(
            x: center.x - capSize / 2, y: center.y - capSize / 2,
            width: capSize, height: capSize)
        )
        ctx.fillPath()
    }
    
    override func layoutSubviews() {
        setNeedsLayout()
    }
}
