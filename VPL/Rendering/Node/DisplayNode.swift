//
//  Node.swift
//  VPL
//
//  Created by Nathan Flurry on 3/13/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

protocol DisplayableNode: Node {
    /// The character that can be drawn to spawn this node.
    static var shortcutCharacter: String? { get }
    
    /// View that can be used to represent the view's interactable content. This
    /// allows for things like constant nodes to have dynamic content.
    var nodeContent: UIView? { get }
}

extension DisplayableNode {
    static var shortcutCharacter: String? { return nil }
    
    var nodeContent: UIView? { return nil }
}

class DisplayNode: UIView {
    var node: DisplayableNode
    
    weak var canvas: DisplayNodeCanvas?
    
    init(node: DisplayableNode) {
        // Save the node and canvas
        self.node = node
        
        super.init(frame: CGRect(x: 0, y: 0, width: 500, height: 500))
        
        // Setup the view
        backgroundColor = .green
        
        // Add label
        let titleLabel = UILabel(frame: CGRect.zero)
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        titleLabel.text = node.name
        addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor).activate()
        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8).activate()
        
        // Create panels
        let leftPanel = UIStackView(frame: CGRect.zero)
        let rightPanel = UIStackView(frame: CGRect.zero)
        leftPanel.axis = .vertical
        rightPanel.axis = .vertical
        leftPanel.alignment = .leading
        rightPanel.alignment = .trailing
        leftPanel.distribution = .fill
        rightPanel.distribution = .fill
        addSubview(leftPanel)
        addSubview(rightPanel)
        
        leftPanel.translatesAutoresizingMaskIntoConstraints = false
        leftPanel.widthAnchor.constraint(greaterThanOrEqualToConstant: 150).activate()
        leftPanel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8).activate()
        leftPanel.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).activate()
        leftPanel.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor, constant: -8).activate()
        
        rightPanel.translatesAutoresizingMaskIntoConstraints = false
        rightPanel.widthAnchor.constraint(greaterThanOrEqualToConstant: 150).activate()
        rightPanel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8).activate()
        rightPanel.rightAnchor.constraint(equalTo: rightAnchor, constant: -8).activate()
        rightPanel.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor, constant: -8).activate()
        
        leftPanel.rightAnchor.constraint(equalTo: rightPanel.leftAnchor, constant: -8).activate()
        
        // Add left properies
        if let trigger = node.inputTrigger {
            addTrigger(parent: leftPanel, leftAlign: true, trigger: trigger)
        }
        for value in node.inputValues {
            addValue(parent: leftPanel, leftAlign: true, value: value)
        }
        
        // Add right properties
        if let trigger = node.outputTrigger {
            addTrigger(parent: rightPanel, leftAlign: false, trigger: trigger)
        }
        for trigger in node.extraOutputTriggers {
            addTrigger(parent: rightPanel, leftAlign: false, trigger: trigger)
        }
        for value in node.outputValues {
            addValue(parent: rightPanel, leftAlign: false, value: value)
        }
        
        // Add drag gesture
        let dragGesture = UIPanGestureRecognizer(target: self, action: #selector(panned(sender:)))
        addGestureRecognizer(dragGesture)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addTrigger(parent: UIStackView, leftAlign: Bool, trigger: NodeTrigger) {
        addProperty(parent: parent, leftAlign: leftAlign, socket: .controlFlow(trigger), name: trigger.id, type: nil)
    }
    
    func addValue(parent: UIStackView, leftAlign: Bool, value: NodeValue) {
        addProperty(parent: parent, leftAlign: leftAlign, socket: .dataFlow(value), name: value.id, type: value.type.description)
    }
    
    func addProperty(parent: UIStackView, leftAlign: Bool, socket socketType: DisplayNodeSocketType, name: String, type: String?) {
        let view = UIView(frame: CGRect.zero)
        view.translatesAutoresizingMaskIntoConstraints = false

        let socket = DisplayNodeSocket(frame: CGRect.zero, type: socketType)
        view.addSubview(socket)
        socket.translatesAutoresizingMaskIntoConstraints = false
        socket.topAnchor.constraint(equalTo: view.topAnchor).activate()
        socket.bottomAnchor.constraint(equalTo: view.bottomAnchor).activate()
        socket.widthAnchor.constraint(equalTo: socket.heightAnchor).activate()

        let nameLabel = UILabel(frame: CGRect.zero)
        nameLabel.text = name
        view.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 8).activate() // Make the view's height dependent on font size
        nameLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -8).activate() // ^
        nameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).activate()

        let typeLabel = UILabel(frame: CGRect.zero)
        typeLabel.text = type
        typeLabel.textColor = UIColor(white: 0, alpha: 0.5)
        view.addSubview(typeLabel)
        typeLabel.translatesAutoresizingMaskIntoConstraints = false
        typeLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).activate()
        
        // Add constraints to align the views horizontally
        var alignedViews = [socket, nameLabel, typeLabel]
        if !leftAlign {
            alignedViews = alignedViews.reversed()
        }
        if leftAlign {
            alignedViews.first?.leftAnchor.constraint(equalTo: view.leftAnchor).activate()
            alignedViews.last?.rightAnchor.constraint(lessThanOrEqualTo: view.rightAnchor, constant: -8).activate()
        } else {
            alignedViews.first?.leftAnchor.constraint(greaterThanOrEqualTo: view.leftAnchor, constant: 8).activate()
            alignedViews.last?.rightAnchor.constraint(equalTo: view.rightAnchor).activate()
        }
        for i in 1..<alignedViews.count {
            alignedViews[i].leftAnchor.constraint(equalTo: alignedViews[i-1].rightAnchor, constant: 8).activate()
        }

        parent.addArrangedSubview(view)
    }
    
    @objc func panned(sender: UIPanGestureRecognizer) {
        if sender.state == .began || sender.state == .changed {
            // Notify the canvas the node was updated
            canvas?.updatedNode(node: self)
            
            // Drag the view
            let translation = sender.translation(in: self)
            center = CGPoint(x: center.x + translation.x, y: center.y + translation.y)
            sender.setTranslation(CGPoint.zero, in: self)
        }
    }
    
    override func layoutSubviews() {
        // Size to fit content
        frame.size = systemLayoutSizeFitting(UILayoutFittingCompressedSize)
    }
}
