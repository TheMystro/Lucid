//
//  UIRoundedButtonWhite.swift
//  Glassjar
//
//  Created by John Hennig on 11/01/15.
//  Copyright (c) 2015 GlassJar Limited. All rights reserved.
//


class UIRoundedButtonWhite: UIRoundedButton {
	
	override func setFrameCircle() {
		//super.setFrameCircle()
		
        
        self.layer.cornerRadius = 8
        self.clipsToBounds = true
        
		self.layer.borderWidth = 2
		self.layer.borderColor = UIColor.fromRGB(0, green: 160, blue: 255).CGColor
	}
	
}