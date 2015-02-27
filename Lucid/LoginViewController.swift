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
        registerForKeyboard()
        configureFonts()
    }
    
    func configureFonts() {
        lucidLabel.orJenson()
        lucidLabel.kernBy(5)
        
        nahLabel.orJenson(size: 14)
        nahLabel.kernBy(1)
    }
    
    
    @IBAction func goOrNahClick(sender: AnyObject) {
        let homeViewController = UIStoryboard(name: "Home", bundle: nil).instantiateInitialViewController() as UIViewController
        
        navigationController?.pushViewController(homeViewController, animated: true)
    }
    
}
