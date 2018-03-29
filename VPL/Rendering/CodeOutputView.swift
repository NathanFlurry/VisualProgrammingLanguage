//
//  CodeOutputView.swift
//  VPL
//
//  Created by Nathan Flurry on 3/29/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

class CodeOutputView: UIView {
    // From: https://www.dotnetperls.com/keyword-swift
    let keywords: [String] = [
            "associativity", "break", "case", "catch", "class", "continue",
            "convenience", "default", "deinit", "didSet", "do", "else", "enum",
            "extension", "fallthrough", "false", "final", "for", "func", "get",
            "guard", "if", "in", "infix", "init", "inout", "internal", "lazy",
            "let", "mutating", "nil", "operator", "override", "postfix",
            "precedence", "prefix", "private", "public", "repeat", "required",
            "return", "self", "set", "static", "struct", "subscript", "super",
            "switch", "throws", "true", "try", "var", "weak", "where", "while",
            "willSet"
    ]
    
    let splitCharacters: [String] = [ " ", "{", "}", "(", ")", "[", "]" ]
    
    var textView: UITextView = UITextView(frame: CGRect.zero)
    
    init() {
        super.init(frame: CGRect.zero)
        
        // Style the view
        backgroundColor = UIColor(white: 0.96, alpha: 1.0)
        
        // Create text view
        let inset: CGFloat = 16
        textView.textContainerInset = UIEdgeInsets(top: inset, left: inset, bottom: inset, right: inset)
        textView.backgroundColor = .clear
        textView.isEditable = false
        textView.isSelectable = true
        addSubview(textView)
        
        // Add constraints
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.topAnchor.constraint(equalTo: topAnchor).activate()
        textView.bottomAnchor.constraint(equalTo: bottomAnchor).activate()
        textView.centerXAnchor.constraint(equalTo: centerXAnchor).activate()
        textView.leftAnchor.constraint(greaterThanOrEqualTo: leftAnchor, constant: 64).activate()
        textView.rightAnchor.constraint(lessThanOrEqualTo: rightAnchor, constant: 64).activate()
        textView.widthAnchor.constraint(greaterThanOrEqualToConstant: 600).activate().setPriority(.defaultLow)
        
        // Render the code
        render(code: "")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func render(code: String) {
        // Get the code
        let code = code.count > 0 ? code : "No assembled code."
        
        // Update attributed text
        textView.attributedText = stylize(code: code)
    }
    
    private func stylize(code: String) -> NSMutableAttributedString {
        // Process the code
        let string = NSMutableAttributedString(string: code)
        let words = code.split { splitCharacters.contains(String($0)) }.map { String($0) }
        
        // Stylize the keywords
        for word in words {
            if keywords.contains(word) {
                let range = (string.string as NSString).range(of: word)
                let color = UIColor(red: 0.66, green: 0.51, blue: 0.57, alpha: 1.0)
                string.addAttribute(NSAttributedStringKey.foregroundColor, value: color, range: range)
            }
        }
        
        // Set the font
        if let font = UIFont(name: "Menlo-Regular", size: UIFont.systemFontSize) {
            string.addAttribute(NSAttributedStringKey.font, value: font, range: NSMakeRange(0, string.length)
            )
        }
        
        return string
    }
}
