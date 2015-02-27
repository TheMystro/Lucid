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
    
    @IBOutlet weak var loginFacebookButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    
    
    override func viewDidLoad() {
        addTextDismiss()
        registerForKeyboard()
        configureFonts()
    }
    
    func configureFonts() {
        lucidLabel.orJenson()
        lucidLabel.kernBy(3.141579263)
        
        nahLabel.orJenson(size: 14)
        nahLabel.kernBy(1)
        
        loginFacebookButton.titleLabel?.orJenson(size: 17)
        loginButton.titleLabel?.orJenson(size: 17)
        signupButton.titleLabel?.orJenson(size: 17)
    }
    
    
    @IBAction func goOrNahClick(sender: AnyObject) {
        let homeViewController = UIStoryboard(name: "Home", bundle: nil).instantiateInitialViewController() as UIViewController
        
        navigationController?.pushViewController(homeViewController, animated: true)
    }
    
    @IBAction func loginWithFacebookWasHit(sender: AnyObject) {
        performSegueWithIdentifier("segueToTutorial", sender: self)
    }
}
