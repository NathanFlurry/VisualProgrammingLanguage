//
//  CodeOutputView.swift
//  VPL
//
//  Created by Nathan Flurry on 3/29/18.
//  Copyright © 2018 Nathan Flurry. All rights reserved.
//

import UIKit

class CodeOutputView: UITextView {
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
    
    init() {
        super.init(frame: CGRect.zero, textContainer: nil)
        
        isEditable = false
        isSelectable = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func render(code: String) {
        // Update attributed text
        attributedText = stylize(code: code)
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
        string.addAttribute(
            NSAttributedStringKey.font,
            value: UIFont(name: "Menlo-Regular", size: UIFont.systemFontSize),
            range: NSMakeRange(0, string.length)
        )
        
        return string
    }
}
