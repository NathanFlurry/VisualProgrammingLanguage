//
//  DisplayNodeSocket.swift
//  VPL
//
//  Created by Nathan Flurry on 3/13/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

enum DisplayNodeSocketType: Equatable {
    case inputTrigger(InputTrigger), outputTrigger(OutputTrigger), inputValue(InputValue), outputValue(OutputValue)
    
    var socketColor: UIColor {
        switch self {
        case .inputTrigger(_), .outputTrigger(_):
            return UIColor.orange
        case .inputValue(_), .outputValue(_):
            return UIColor.blue
        }
    }
    
    var isConnected: Bool {
        switch self {
        case .inputTrigger(let trigger):
            return trigger.target != nil
        case .outputTrigger(let trigger):
            return trigger.target != nil
        case .inputValue(let value):
            return value.target != nil
        case .outputValue(let value):
            return value.target != nil
        }
    }
    
    static func == (lhs: DisplayNodeSocketType, rhs: DisplayNodeSocketType) -> Bool {
        switch lhs {
        case .inputTrigger(let lhsTrigger):
            if case let .inputTrigger(rhsTrigger) = rhs {
                return lhsTrigger === rhsTrigger
            }
        case .outputTrigger(let lhsTrigger):
            if case let .outputTrigger(rhsTrigger) = rhs {
                return lhsTrigger === rhsTrigger
            }
        case .inputValue(let lhsValue):
            if case let .inputTrigger(rhsValue) = rhs {
                return lhsValue === rhsValue
            }
        case .outputValue(let lhsValue):
            if case let .outputTrigger(rhsValue) = rhs {
                return lhsValue === rhsValue
            }
        }
        
        return false
    }
}

class DisplayNodeSocket: UIView {
    var type: DisplayNodeSocketType
    
    weak var node: DisplayNode?
    
    var draggingTarget: CGPoint?
    
    var shapeView: UIView = UIView()
    
    init(frame: CGRect, type: DisplayNodeSocketType, node: DisplayNode) {
        self.type = type
        self.node = node
        
        super.init(frame: frame)
        
        // Style the view
        backgroundColor = .clear
        
        // Add the shape view
        shapeView.backgroundColor = type.socketColor
        addSubview(shapeView)
        shapeView.translatesAutoresizingMaskIntoConstraints = false
        shapeView.centerXAnchor.constraint(equalTo: centerXAnchor).activate()
        shapeView.centerYAnchor.constraint(equalTo: centerYAnchor).activate()
        shapeView.widthAnchor.constraint(equalToConstant: 22).activate()
        shapeView.heightAnchor.constraint(equalTo: shapeView.widthAnchor).activate()
        
        // Add drag gesture
        let dragGesture = UIPanGestureRecognizer(target: self, action: #selector(panned(sender:)))
        addGestureRecognizer(dragGesture)
        
        // Update state
        updateState()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /// If this socket can be connected to another socket.
    func canConnectTo(socket other: DisplayNodeSocket) -> Bool {
        switch type {
        case .inputTrigger(let trigger):
            if case let .outputTrigger(otherTrigger) = other.type {
                return trigger.canConnect(to: otherTrigger)
            }
        case .outputTrigger(let trigger):
            if case let .inputTrigger(otherTrigger) = other.type {
                return trigger.canConnect(to: otherTrigger)
            }
        case .inputValue(let value):
            if case let .outputValue(otherValue) = other.type {
                return value.canConnect(to: otherValue)
            }
        case .outputValue(let value):
            if case let .inputValue(otherValue) = other.type {
                return value.canConnect(to: otherValue)
            }
        }
        
        return false
    }
    
    /// Connects this socket to another socket.
    func connect(to other: DisplayNodeSocket) {
        // Set the connection.
        switch type {
        case .inputTrigger(let trigger):
            if case let .outputTrigger(otherTrigger) = other.type {
                trigger.connect(to: otherTrigger)
            }
        case .outputTrigger(let trigger):
            if case let .inputTrigger(otherTrigger) = other.type {
                trigger.connect(to: otherTrigger)
            }
        case .inputValue(let value):
            if case let .outputValue(otherValue) = other.type {
                value.connect(to: otherValue)
            }
        case .outputValue(let value):
            if case let .inputValue(otherValue) = other.type {
                value.connect(to: otherValue)
            }
        }
        
        // Update the socket
        updateState()
        other.updateState()
    }
    
    @objc func panned(sender: UIPanGestureRecognizer) {
        guard let node = node, let canvas = node.canvas else {
            print("Missing node or canvas for socket.")
            return
        }
        
        // Remove the target
        switch type {
        case .inputTrigger(let trigger): trigger.reset()
        case .outputTrigger(let trigger): trigger.reset()
        case .inputValue(let value): value.reset()
        case .outputValue(let value): value.reset()
        }
        
        // Update the dragging to position
        if sender.state == .began || sender.state == .changed {
            // Set the translation in this view; otherwise, it will start at 0
            // which is not what we want
            if draggingTarget == nil {
                sender.setTranslation(sender.location(ofTouch: 0, in: self), in: self)
            }
            
            // Save the translation
            draggingTarget = sender.translation(in: self)
        } else {
            // Finish the connection
            canvas.finishConnection(socket: self)
            
            // Remove the target
            draggingTarget = nil
        }
        
        // Notify updates
        updateState()
        canvas.updated(node: node)
    }
    
    func updateState() {
        UIView.animate(withDuration: 0.4) {
            let isCircle = self.type.isConnected || self.draggingTarget != nil
            self.shapeView.layer.cornerRadius = isCircle ? self.shapeView.frame.width / 2 : 8
        }
    }
}
