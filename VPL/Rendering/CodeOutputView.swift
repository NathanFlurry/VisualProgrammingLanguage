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
        textView.textContainerInset = UIEdgeInsets(top: inset, left: inset, bottom: isInPlayground ? 80 : inset, right: inset)
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

        // Stylize the keywords
        let color = UIColor(red: 0.66, green: 0.51, blue: 0.57, alpha: 1.0)
        for keyword in keywords {
            var searchCode = code[code.startIndex..<code.endIndex]
            while let keywordRange = searchCode.range(of: keyword) {
                // Replace the code to search
                searchCode = searchCode[keywordRange.upperBound..<code.endIndex]
                
                // Make sure that it's surrounded by split characters or at the
                // edge of the string
                if let prevIndex = code.index(keywordRange.lowerBound, offsetBy: -1, limitedBy: code.startIndex) {
                    if !splitCharacters.contains(String(code[prevIndex])) {
                        continue
                    }
                }
                if let nextIndex = code.index(keywordRange.upperBound, offsetBy: 1, limitedBy: code.endIndex) {
                    if !splitCharacters.contains(String(code[nextIndex])) {
                        continue
                    }
                }
                
                // Updates the attributes
                let range = NSRange(keywordRange, in: code)
                string.addAttribute(NSAttributedStringKey.foregroundColor, value: color, range: range)
            }
        }
        
        // Set the font
        string.addAttribute(NSAttributedStringKey.font, value: UIFont.codeFont(), range: NSRange(location: 0, length: string.length))
        
        return string
    }
}
