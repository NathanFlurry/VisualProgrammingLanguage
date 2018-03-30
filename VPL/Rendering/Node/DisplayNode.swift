//
//  Node.swift
//  VPL
//
//  Created by Nathan Flurry on 3/13/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

class DisplayNode: UIView, UIGestureRecognizerDelegate {
    /// The underlying node data.
    var node: DisplayableNode
    
    /// Canvas that this node is displayed in.
    weak var canvas: DisplayNodeCanvas?
    
    /// List of all sockets on the node.
    var sockets: [DisplayNodeSocket] = []
    
    /// The content view for this node.
    var contentView: DisplayableNodeContentView?
    
    init(node: DisplayableNode) {
        // Save the node and canvas
        self.node = node
        
        super.init(frame: CGRect(x: 0, y: 0, width: 99999, height: 9999)) // Need large frame so the layout can be made
        
        // Setup the view
        backgroundColor = UIColor(white: 0.95, alpha: 1.0)
        layer.cornerRadius = 8
        updateShadow(lifted: false)
        
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
            // Save the view
            self.contentView = contentView
            
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
        leftPanel.widthAnchor.constraint(greaterThanOrEqualToConstant: 20).activate()
        leftPanel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8).activate()
        leftPanel.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).activate()
        leftPanel.bottomAnchor.constraint(lessThanOrEqualTo: panelBottomAnchor, constant: -8).activate()
        
        rightPanel.translatesAutoresizingMaskIntoConstraints = false
        rightPanel.widthAnchor.constraint(greaterThanOrEqualToConstant: 20).activate()
        rightPanel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8).activate()
        rightPanel.rightAnchor.constraint(equalTo: rightAnchor, constant: -8).activate()
        rightPanel.bottomAnchor.constraint(lessThanOrEqualTo: panelBottomAnchor, constant: -8).activate()
        
        leftPanel.rightAnchor.constraint(equalTo: rightPanel.leftAnchor, constant: -8).activate()
        
        // Add properties
        if let trigger = node.inputTrigger {
            addProperty(parent: leftPanel, leftAlign: true, socket: .inputTrigger(trigger), name: "Previous", type: nil)
        }
        for value in node.inputValues {
            addProperty(parent: leftPanel, leftAlign: true, socket: .inputValue(value), name: value.name, type: value.type.description)
        }
        switch node.output {
        case .triggers(let triggers):
            for trigger in triggers {
                addProperty(parent: rightPanel, leftAlign: false, socket: .outputTrigger(trigger), name: trigger.name, type: nil)
            }
        case .value(let value):
            addProperty(parent: rightPanel, leftAlign: false, socket: .outputValue(value), name: "Output", type: value.type.description)
        case .none:
            break
        }
        
        // Add drag gesture
        let dragGesture = UIPanGestureRecognizer(target: self, action: #selector(panned(sender:)))
        dragGesture.delegate = self
        addGestureRecognizer(dragGesture)
        
        // Add remove gesture
        let removeGesture = UITapGestureRecognizer(target: self, action: #selector(remove(sender:)))
        removeGesture.numberOfTapsRequired = 2
        removeGesture.delegate = self
        addGestureRecognizer(removeGesture)
        
        // Add intro effect
        layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        transform = CGAffineTransform(scaleX: 0, y: 0)
        alpha = 0
        UIView.animate(withDuration: 0.2) {
            self.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.alpha = 1
        }
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
        // Handle movement
        if sender.state == .began || sender.state == .changed {
            // Drag the view
            let translation = sender.translation(in: self)
            center = CGPoint(x: center.x + translation.x, y: center.y + translation.y)
            sender.setTranslation(CGPoint.zero, in: self)
            
            // Notify the canvas the node was updated
            canvas?.updated(node: self)
        }
        
        // Update shadow
        switch sender.state {
        case .began:
            self.updateShadow(lifted: true)
        case .ended, .cancelled, .failed:
            self.updateShadow(lifted: false)
        default:
            break
        }
    }
    
    @objc func remove(sender: UIPanGestureRecognizer) {
        // Remove this node
        canvas?.remove(node: self)
    }
    
    override func layoutSubviews() {
        // Size to fit content
        frame.size = systemLayoutSizeFitting(UILayoutFittingCompressedSize)
    }
    
    func updateShadow(lifted: Bool) {
        // Show shadow
        layer.shadowOpacity = 0.15
        
        // Remove previous animations
        layer.removeAllAnimations()
        
        // Animate properties
        let presentation = layer.presentation()
        
        let scaleAnim = CABasicAnimation(keyPath: "transform")
        scaleAnim.fromValue = presentation?.transform ?? CATransform3DIdentity
        scaleAnim.toValue = lifted ?
            CATransform3DScale(CATransform3DIdentity, 1.05, 1.05, 1.05) :
            CATransform3DIdentity
        
        let offsetAnim = CABasicAnimation(keyPath: "shadowOffset")
        offsetAnim.fromValue = presentation?.shadowOffset ?? CGSize.zero
        offsetAnim.toValue = lifted ? CGSize(width: 0, height: 25) : CGSize(width: 0, height: 5)
        
        let shadowAnim = CABasicAnimation(keyPath: "shadowRadius")
        shadowAnim.fromValue = presentation?.shadowRadius ?? 0
        shadowAnim.toValue = lifted ? 30 : 10
        
        let groupAnim = CAAnimationGroup()
        groupAnim.duration = 0.2
        groupAnim.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
        groupAnim.animations = [ /*scaleAnim,*/ offsetAnim, shadowAnim ]
        groupAnim.fillMode = kCAFillModeForwards
        groupAnim.isRemovedOnCompletion = false
        layer.add(groupAnim, forKey: "shadowAnim")
    }
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        // If the content view absorbs touches, make sure the touch isn't inside
        if let contentView = contentView, contentView.absorbsTouches {
            return !contentView.point(inside: touch.location(in: contentView), with: nil)
        }
        
        // Otherwise, carry on
        return true
    }
    
    func updateState() {
        for socket in sockets {
            socket.updateState()
        }
    }
}
