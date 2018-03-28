//
//  Node.swift
//  VPL
//
//  Created by Nathan Flurry on 3/13/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

class DisplayNode: UIView {
    /// The underlying node data.
    var node: DisplayableNode
    
    /// Canvas that this node is displayed in.
    weak var canvas: DisplayNodeCanvas?
    
    /// List of all sockets on the node.
    var sockets: [DisplayNodeSocket] = []
    
    init(node: DisplayableNode) {
        // Save the node and canvas
        self.node = node
        
        super.init(frame: CGRect(x: 0, y: 0, width: 99999, height: 9999)) // Need large frame so the layout can be made
        
        // Setup the view
        backgroundColor = .green
        
        // Add label
        let titleLabel = UILabel(frame: CGRect.zero)
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        titleLabel.text = type(of: node).name
        addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor).activate()
        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8).activate()
        
        // Add content view
        var panelBottomAnchor = bottomAnchor // Anchor to attatch the panels to
        if let contentView = node.contentView {
            // Add the view
            addSubview(contentView)
            
            // Size it
            contentView.translatesAutoresizingMaskIntoConstraints = false
            contentView.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).activate()
            contentView.rightAnchor.constraint(equalTo: rightAnchor, constant: -8).activate()
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8).activate()
            
            // Position it below the panels
            panelBottomAnchor = contentView.topAnchor
        }
        
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
        leftPanel.bottomAnchor.constraint(lessThanOrEqualTo: panelBottomAnchor, constant: -8).activate()
        
        rightPanel.translatesAutoresizingMaskIntoConstraints = false
        rightPanel.widthAnchor.constraint(greaterThanOrEqualToConstant: 150).activate()
        rightPanel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8).activate()
        rightPanel.rightAnchor.constraint(equalTo: rightAnchor, constant: -8).activate()
        rightPanel.bottomAnchor.constraint(lessThanOrEqualTo: panelBottomAnchor, constant: -8).activate()
        
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
        
        // Add remove gesture
        let removeGesture = UITapGestureRecognizer(target: self, action: #selector(remove(sender:)))
        removeGesture.numberOfTapsRequired = 2
        addGestureRecognizer(removeGesture)
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

        let socket = DisplayNodeSocket(frame: CGRect.zero, type: socketType, node: self)
        sockets.append(socket) // Save the socket
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
            // Drag the view
            let translation = sender.translation(in: self)
            center = CGPoint(x: center.x + translation.x, y: center.y + translation.y)
            sender.setTranslation(CGPoint.zero, in: self)
            
            // Notify the canvas the node was updated
            canvas?.updated(node: self)
        }
    }
    
    @objc func remove(sender: UIPanGestureRecognizer) {
        canvas?.remove(node: self)
    }
    
    override func layoutSubviews() {
        // Size to fit content
        frame.size = systemLayoutSizeFitting(UILayoutFittingCompressedSize)
    }
}
