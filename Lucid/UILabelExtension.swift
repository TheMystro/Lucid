//
//  UILabelExtension.swift
//  Lucid
//
//  Created by Andrew Breckenridge on 2/19/15.
//  Copyright (c) 2015 Andrew Breckenridge. All rights reserved.
//

import UIKit

extension UILabel {
    func orJenson(size: CGFloat = 30) {
        self.font = UIFont(name: "AJensonPro-Regular", size: size)
    }
    
    func kern(kerningValue:CGFloat) {
        self.attributedText =  NSAttributedString(string: self.text ?? "", attributes: [NSKernAttributeName:kerningValue, NSFontAttributeName:font, NSForegroundColorAttributeName:self.textColor])
    }
}