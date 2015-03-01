//
//  UIRoundedButton.swift
//  Glassjar
//
//  Created by Andrew Breckenridge on 2/21/15.
//  Copyright (c) 2015 Glassjar Software, Inc. All rights reserved.
//


class UIRoundedButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setFrameCircle()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setFrameCircle()
    }
    
    func setFrameCircle() {
        self.layer.cornerRadius = self.frame.size.height / 2
        self.clipsToBounds = true
    }
    
}