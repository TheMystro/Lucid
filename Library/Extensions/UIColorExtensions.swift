//
//  UIColorExtensions.swift
//  Glassjar
//
//  Created by John Hennig on 4/01/15.
//  Copyright (c) 2015 GlassJar Limited. All rights reserved.
//

extension UIColor {
    class func blueGlassjarColor() -> UIColor {
        return UIColor(red: 0, green: 0.695, blue: 255, alpha: 0)
    }
	
	class func fromRGB(red: Int, green: Int, blue: Int) -> UIColor {
		return UIColor(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: CGFloat(1))
	}
	
	class func fromHex(hexString: String) -> UIColor {
		var rgbValue: UInt32 = 0
		var scanner = NSScanner(string: hexString)
		scanner.scanLocation = 0
		scanner.scanHexInt(&rgbValue)
		var red = (rgbValue & 0xFF0000) >> 16
		var green = (rgbValue & 0xFF00) >> 8
		var blue = (rgbValue & 0xFF)
		
		var color = UIColor.fromRGB(Int(red), green: Int(green), blue: Int(blue))
		
		return color
	}
	
}