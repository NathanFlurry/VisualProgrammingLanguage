//
//  GenericInputView.swift
//  VPL
//
//  Created by Nathan Flurry on 3/28/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

class GenericInputView: DisplayableNodeContentView {
    var value: String {
        return textField.text ?? ""
    }
    
    private var textField: UITextField
    
    init(frame: CGRect, defaultValue: String) {
        textField = UITextField(frame: CGRect.zero)
        textField.text = defaultValue
        textField.borderStyle = .roundedRect
        
        super.init(frame: frame)
        
        addSubview(textField)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.topAnchor.constraint(equalTo: topAnchor).activate()
        textField.bottomAnchor.constraint(equalTo: bottomAnchor).activate()
        textField.leftAnchor.constraint(equalTo: leftAnchor).activate()
        textField.rightAnchor.constraint(equalTo: rightAnchor).activate()
        
        textField.addTarget(self, action: #selector(textFieldDidChange(sender:)), for: .editingChanged)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func textFieldDidChange(sender: UITextField) {
        contentValueChanged()
    }
}
