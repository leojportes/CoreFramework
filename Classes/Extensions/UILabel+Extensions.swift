//
//  UILabel+Extensions.swift
//  CoreFramework
//
//  Created by Leonardo Portes on 25/01/22.
//

import UIKit

extension UILabel {
    public func setDifferentColor(string: String, location: Int = 0, length: Int, color: UIColor){
        let attText = NSMutableAttributedString(string: string)
        attText.addAttribute(NSAttributedString.Key.foregroundColor, value: color,
                             range: NSRange(location: location, length: length))
        attributedText = attText
        
    }
}
