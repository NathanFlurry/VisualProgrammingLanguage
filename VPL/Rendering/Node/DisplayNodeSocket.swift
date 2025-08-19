//
//  DisplayNodeSocket.swift
//  VPL
//
//  Created by Nathan Flurry on 3/13/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

enum DisplayNodeSocketType: Equatable {
    case inputTrigger(InputTrigger), outputTrigger(OutputTrigger)
    case inputValue(InputValue), outputValue(OutputValue)
    case inputVariable(InputVariable)

    var socketColor: UIColor {
        switch self {
        case .inputTrigger, .outputTrigger:
            return UIColor(red: 1, green: 0.74, blue: 0.24, alpha: 1.0)
        case .inputValue, .outputValue:
            return UIColor(red: 0.11, green: 0.84, blue: 1.0, alpha: 1.0)
        case .inputVariable:
            return UIColor(red: 0.12, green: 1, blue: 0.59, alpha: 1.0)
        }
    }

    var connectionColor: UIColor {
        switch self {
        case .inputTrigger, .outputTrigger:
            return UIColor(red: 1, green: 0.85, blue: 0.56, alpha: 1.0)
        case .inputValue, .outputValue:
            return UIColor(red: 0.65, green: 0.93, blue: 1.0, alpha: 1.0)
        case .inputVariable:
            return UIColor(red: 0.44, green: 1, blue: 0.74, alpha: 0.35)
        }
    }

    var isInput: Bool {
        switch self {
        case .inputTrigger, .inputValue, .inputVariable:
            return true
        case .outputValue, .outputTrigger:
            return false
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
        case .inputVariable(let variable):
            return variable.target != nil
        }
    }

    static func ==(lhs: DisplayNodeSocketType, rhs: DisplayNodeSocketType) -> Bool {
        switch (lhs, rhs) {
        case let (.inputTrigger(l), .inputTrigger(r)):
            return l === r
        case let (.outputTrigger(l), .outputTrigger(r)):
            return l === r
        case let (.inputValue(l), .inputValue(r)):
            return l === r
        case let (.outputValue(l), .outputValue(r)):
            return l === r
        case let (.inputVariable(l), .inputVariable(r)):
            return l === r
        default:
            return false
        }

    }

    func reset() {
        switch self {
        case let .inputTrigger(trigger): trigger.reset()
        case let .outputTrigger(trigger): trigger.reset()
        case let .inputValue(value): value.reset()
        case let .outputValue(value): value.reset()
        case let .inputVariable(variable): variable.reset()
        }
    }
}

class DisplayNodeSocket: UIView {
    var type: DisplayNodeSocketType

    weak var node: DisplayNode?

    var draggingTarget: CGPoint?

    var shapeView: UIView = UIView()

    var variablesText: UILabel?

    var triangleShape: CAShapeLayer!

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

        // Add a triangle
        self.triangleShape = addTriangle(size: CGSize(width: 6, height: 8))

        // Add variables text
        if case let .outputTrigger(trigger) = type, trigger.exposedVariables.count > 0 {
            let variablesText = UILabel()
            self.variablesText = variablesText
            variablesText.text = String(trigger.exposedVariables.count)
            variablesText.font = UIFont.codeFont(size: 10)
            variablesText.textAlignment = .center
            variablesText.isUserInteractionEnabled = false
            addSubview(variablesText)
            variablesText.translatesAutoresizingMaskIntoConstraints = false
            variablesText.widthAnchor.constraint(equalToConstant: 20).activate()
            variablesText.heightAnchor.constraint(equalToConstant: 20).activate()
            variablesText.rightAnchor.constraint(equalTo: rightAnchor).activate()
            variablesText.bottomAnchor.constraint(equalTo: bottomAnchor).activate()
        }

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
        switch (type, other.type) {
        case let (.inputTrigger(trigger), .outputTrigger(otherTrigger)):
            return trigger.canConnect(to: otherTrigger)
        case let (.outputTrigger(trigger), .inputTrigger(otherTrigger)):
            return trigger.canConnect(to: otherTrigger)
        case let (.inputValue(value), .outputValue(otherValue)):
            return value.canConnect(to: otherValue)
        case let (.outputValue(value), .inputValue(otherValue)):
            return value.canConnect(to: otherValue)
        case let (.inputVariable(variable), .outputTrigger(trigger)):
            return trigger.exposedVariables.contains { variable.canConnect(to: $0) }
        default:
            return false
        }
    }

    /// Connects this socket to another socket.
    func connect(to other: DisplayNodeSocket) {
        // Set the connection.
        switch (type, other.type) {
        case let (.inputTrigger(trigger), .outputTrigger(otherTrigger)):
            trigger.connect(to: otherTrigger)
        case let (.outputTrigger(trigger), .inputTrigger(otherTrigger)):
            trigger.connect(to: otherTrigger)
        case let (.inputValue(value), .outputValue(otherValue)):
            value.connect(to: otherValue)
        case let (.outputValue(value), .inputValue(otherValue)):
            value.connect(to: otherValue)
        case (.inputVariable, _):
            promptVariableConnectino(to: other)
        default:
            break
        }

        // Update the socket
        updateState()
        other.updateState()
    }

    func promptVariableConnectino(to other: DisplayNodeSocket) {
        guard case let .inputVariable(variable) = type else {
            print("Cannot propt for variable connection on non-variable types.")
            return
        }
        guard case let .outputTrigger(trigger) = other.type else {
            return
        }

        // Create the controller
        let alert = UIAlertController(
            title: "Spawn Node",
            message: nil,
            preferredStyle: .actionSheet
        )


        // Configure the popover
        alert.popoverPresentationController?.sourceView = other
        alert.popoverPresentationController?.sourceRect = other.bounds
        alert.popoverPresentationController?.permittedArrowDirections = .left

        // Display the nodes
        for otherVariable in trigger.exposedVariables {
            // Make sure the variable can be connected to; this may mean there
            // are single-option popovers, but that's ok. It's better to have
            // the user know for sure what they're connecting without errors.
            guard variable.canConnect(to: otherVariable) else {
                continue
            }

            // Create an action to spawn the node
            let label = "\(otherVariable.name) (\(otherVariable.type.description))"
            let action = UIAlertAction(title: label, style: .default) { _ in
                // Connect the values
                variable.connect(to: otherVariable)

                // Update the socket
                self.updateState()
                other.updateState()

                // Force update the canvas state, since it doesn't know about
                // this
                self.node?.canvas?.updateState()
            }
            alert.addAction(action)
        }

        // Present it
        parentViewController?.present(alert, animated: true)
    }

    /// Label that will be drawn on the connection.
    func connectionLabel() -> String? {
        if case let .inputVariable(variable) = type,
            let target = variable.target {
            return "\(target.name) (\(target.type.description))"
        }
        return nil
    }

    @objc func panned(sender: UIPanGestureRecognizer) {
        guard let node = node, let canvas = node.canvas else {
            print("Missing node or canvas for socket.")
            return
        }

        // Remove the target
        type.reset()

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
        let isConnected = self.type.isConnected || self.draggingTarget != nil

        // Update shape layer
        UIView.animate(withDuration: 0.2) {
            self.shapeView.layer.cornerRadius = isConnected ? self.shapeView.frame.width / 2 : 8
        }

        // Hide/show triangle
        triangleShape.isHidden = isConnected
    }

    func addTriangle(size: CGSize) -> CAShapeLayer {
        // Create the path
        let path = CGMutablePath()
        path.move(to: CGPoint(x: size.width, y: size.height / 2))
        path.addLine(to: CGPoint(x: 0, y: size.height))
        path.addLine(to: .zero)
        path.addLine(to: CGPoint(x: size.width, y: size.height / 2))

        // Create a shape
        let shape = CAShapeLayer()
        shape.frame = CGRect(origin: CGPoint.zero, size: size)
        shape.path = path
        shape.fillColor = UIColor(white: 0, alpha: 0.2).cgColor

        layer.insertSublayer(shape, at: 0)

        return shape
    }

    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)

        // Determine if input
        var isInput: Bool
        switch type {
        case .inputTrigger, .inputValue, .inputVariable:
            isInput = true
        case .outputTrigger, .outputValue:
            isInput = false
        }

        // Reposition triangle shape
        if isInput {
            triangleShape.frame.origin = CGPoint(
                x: -triangleShape.frame.width / 2 - 8,
                y: frame.height / 2 - triangleShape.frame.height / 2
            )
        } else {
            triangleShape.frame.origin = CGPoint(
                x: frame.width - triangleShape.frame.width / 2 + 8,
                y: frame.height / 2 - triangleShape.frame.height / 2
            )
        }
    }
}
