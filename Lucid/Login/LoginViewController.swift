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
        PFFacebookUtils.logInWithPermissions(["public_profile", "user_friends", "email"], {
            (user: PFUser!, error: NSError!) -> Void in
            if user == nil {
                NSLog("Uh oh. The user cancelled the Facebook login.")
            } else if user.isNew {
                NSLog("User signed up and logged in through Facebook!")
                self.performSegueWithIdentifier("segueToTutorial", sender: self)
            } else {
                NSLog("User logged in through Facebook!")
                self.performSegueWithIdentifier("segueToTutorial", sender: self)
            }
        })
    }
    
    @IBAction func loginWasHit(sender: AnyObject) {
        let sheet = MZFormSheetController(size: CGSize(width: view.frame.width - (2*22), height: view.frame.height - (2*22)), viewController: UIStoryboard(name: "Login", bundle: nil).instantiateViewControllerWithIdentifier("signIn") as UIViewController) as MZFormSheetController
        
        sheet.transitionStyle = MZFormSheetTransitionStyle.Fade
//        sheet.shadowRadius = 3
        
        
        mz_presentFormSheetWithViewController(sheet, animated: true, transitionStyle: .Fade, completionHandler: nil)
    }


    @IBAction func signupWasHit(sender: AnyObject) {
    
    }
    
    @IBAction func unwindToMain(segue: UIStoryboardSegue) {}
}
