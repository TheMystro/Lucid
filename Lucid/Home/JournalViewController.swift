//
//  JournalViewController.swift
//  Lucid
//
//  Created by Andrew Breckenridge on 2/28/15.
//  Copyright (c) 2015 Andrew Breckenridge. All rights reserved.
//

import UIKit

class JournalViewController: UIViewController {
    
    @IBOutlet weak var monthLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var entryTextView: UITextView!

    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addTextDismiss()
        
        let spacerView = UIView(frame: CGRectMake(0, 0, 10, 10))
        titleTextField.leftViewMode = .Always
        titleTextField.leftView = spacerView
        
        let v = UIView(frame: CGRectMake(0, 0, 80, view.frame.size.height))
        let gestureRecog = UISwipeGestureRecognizer(target: self, action: "swipeBack:")
        gestureRecog.direction = .Right
        
        v.addGestureRecognizer(gestureRecog)
        view.addSubview(v)
        
        view.bringSubviewToFront(backButton)
    }
    
    func swipeBack(gesture: UIGestureRecognizer) {
        navigationController?.popViewControllerAnimated(true)
    }

    @IBAction func submitButtonWasHit(sender: AnyObject) {

    }

    @IBAction func discardButtonWasHit(sender: AnyObject) {

    }

    @IBAction func backButtonWasHit(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
