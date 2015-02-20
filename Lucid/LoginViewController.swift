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
    @IBOutlet weak var nahLabel: UILabel!
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var goOrNahButton: UIButton!
    
    override func viewDidLoad() {
        addTextDismiss()
        configureFonts()
        
    }
    
    func configureFonts() {
        lucidLabel.orJenson()
        lucidLabel.kern(5)
        
        nahLabel.orJenson()
    }
    
    
    @IBAction func goOrNahClick(sender: AnyObject) {
        performSegueWithIdentifier("goToHome", sender: self)
    }
    
}
