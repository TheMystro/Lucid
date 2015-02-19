//
//  LoginViewController.swift
//  Lucid
//
//  Created by Andrew Breckenridge on 2/19/15.
//  Copyright (c) 2015 Andrew Breckenridge. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var lucidLabel: UILabel!
    override func viewDidLoad() {
        addTextDismiss()
        configureFonts()
        
    }
    
    func configureFonts() {
        lucidLabel.font = UIFont(name: "AJensonPro-Regular", size: 8)
    }
}
