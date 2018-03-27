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
    static let titleHeight: CGFloat = 30
    static let propertyHeight: CGFloat = 44
    
    var node: DisplayableNode
    
    init(node: DisplayableNode) {
        // Save the node
        self.node = node
        
        // Determine the dimensions
        let leftItemCount = (node.inputTrigger != nil ? 1 : 0) + node.inputValues.count
        let leftItemHeight = CGFloat(leftItemCount) * DisplayNode.propertyHeight
        let rightItemCount = (node.outputTrigger != nil ? 1 : 0) + node.extraOutputTriggers.count + node.outputValues.count
        let rightItemHeight = CGFloat(rightItemCount) * DisplayNode.propertyHeight
        let propertiesHeight = max(leftItemHeight, rightItemHeight)
        let totalHeight = DisplayNode.titleHeight + propertiesHeight
        
        super.init(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: 400, height: totalHeight)))
        
        // Create the view
        self.backgroundColor = UIColor.green
        
        // Add label
        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: frame.width, height: DisplayNode.titleHeight))
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        titleLabel.text = node.name
        addSubview(titleLabel)
        
        // Create property panels
        let leftPanel = UIStackView(frame: CGRect(x: 0, y: DisplayNode.titleHeight, width: frame.width / 2, height: leftItemHeight))
        let rightPanel = UIStackView(frame: CGRect(x: frame.width / 2, y: DisplayNode.titleHeight, width: frame.width / 2, height: rightItemHeight))
        leftPanel.distribution = .equalSpacing
        rightPanel.distribution = .equalSpacing
        leftPanel.axis = .vertical
        rightPanel.axis = .vertical
        addSubview(leftPanel)
        addSubview(rightPanel)
        
        // Add left properies
        if let trigger = node.inputTrigger {
            addTrigger(parent: leftPanel, trigger: trigger)
        }
        for value in node.inputValues {
            addValue(parent: leftPanel, value: value)
        }
        
        // Add right properties
        if let trigger = node.outputTrigger {
            addTrigger(parent: rightPanel, trigger: trigger)
        }
        for trigger in node.extraOutputTriggers {
            addTrigger(parent: rightPanel, trigger: trigger)
        }
        for value in node.outputValues {
            addValue(parent: rightPanel, value: value)
        }
        
        // Add drag gesture
        let dragGesture = UIPanGestureRecognizer(target: self, action: #selector(panned(sender:)))
        addGestureRecognizer(dragGesture)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addTrigger(parent: UIStackView, trigger: NodeTrigger) {
        addProperty(parent: parent, socket: .controlFlow(trigger), name: trigger.id, type: nil)
    }
    
    func addValue(parent: UIStackView, value: NodeValue) {
        addProperty(parent: parent, socket: .dataFlow(value), name: value.id, type: value.type.description)
    }
    
    func addProperty(parent: UIStackView, socket socketType: DisplayNodeSocketType, name: String, type: String?) {
        let height = DisplayNode.propertyHeight
        
        let view = UIStackView(frame: CGRect(x: 0, y: 0, width: frame.width / 2, height: height))
        view.axis = .horizontal
        view.alignment = .center
        view.distribution = .fill
        view.spacing = 8
        
        let socket = DisplayNodeSocket(frame: CGRect(x: 0, y: 0, width: height, height: height), type: socketType)
        view.addArrangedSubview(socket)
        
        let nameLabel = UILabel(frame: CGRect.zero)
        nameLabel.text = name
        view.addArrangedSubview(nameLabel)
        
        let typeLabel = UILabel(frame: CGRect.zero)
        typeLabel.text = type
        typeLabel.textColor = UIColor(white: 0, alpha: 0.5)
        view.addArrangedSubview(typeLabel)
        
        // Add spacer view so everything is left-aligned
        view.addArrangedSubview(UIView(frame: CGRect.zero))
        
        parent.addArrangedSubview(view)
    }
    
    @objc func panned(sender: UIPanGestureRecognizer) {
        if sender.state == .began || sender.state == .changed {
            // Bring to front
            superview?.bringSubview(toFront: self)
            
            // Drag the view
            let translation = sender.translation(in: self)
            center = CGPoint(x: center.x + translation.x, y: center.y + translation.y)
            sender.setTranslation(CGPoint.zero, in: self)
        }
    }
}
