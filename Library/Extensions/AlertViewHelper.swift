//
//  AlertViewHelper.swift
//  Glassjar
//
//  Created by John Hennig on 24/01/15.
//  Copyright (c) 2015 GlassJar Limited. All rights reserved.
//


extension UIAlertView {
	
	//Show a single line Alert indicating an error has occured
    class func showError(title: String, errorMessage: String) {
		//var alert = UIAlertView(title: "", message: errorMessage, delegate: nil, cancelButtonTitle: "OK", otherButtonTitles: nil)
		var alert =  UIAlertView(title: title, message: errorMessage, delegate: nil, cancelButtonTitle: "OK")
		alert.show()
	}
	
}