//
//  JournalViewController.swift
//  Lucid
//
//  Created by Andrew Breckenridge on 2/28/15.
//  Copyright (c) 2015 Andrew Breckenridge. All rights reserved.
//

import Foundation
import UIKit

class JournalViewController: UIViewController {
    
    @IBOutlet weak var monthLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var entryTextView: SZTextView!

    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    let store = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addTextDismiss()
        
        activityIndicator.hidden = true
        
        var components:NSDateComponents = NSCalendar.currentCalendar().components(
            NSCalendarUnit.CalendarUnitYear | NSCalendarUnit.CalendarUnitMonth | NSCalendarUnit.CalendarUnitDay, fromDate: NSDate())
        
        dateLabel.text = "\(components.day)"
        monthLabel.text = "\(components.month)"
        yearLabel.text = "\(components.year)"

        
        let spacerView = UIView(frame: CGRectMake(0, 0, 10, 10))
        titleTextField.leftViewMode = .Always
        titleTextField.leftView = spacerView
        
        entryTextView.textContainerInset = UIEdgeInsetsMake(0, 7, 0, 0)
        
        let v = UIView(frame: CGRectMake(0, 0, 80, view.frame.size.height))
        let gestureRecog = UISwipeGestureRecognizer(target: self, action: "swipeBack:")
        gestureRecog.direction = .Right
        
        v.addGestureRecognizer(gestureRecog)
        view.addSubview(v)
        
        entryTextView.placeholder = "Entry"
        
        titleTextField.text = store.objectForKey("saved-journal-title") as String?
        entryTextView.text = store.objectForKey("saved-journal-entry") as String?
        
        view.bringSubviewToFront(backButton)
    }
    
    func swipeBack(gesture: UIGestureRecognizer) {
        navigationController?.popViewControllerAnimated(true)
    }

    @IBAction func submitButtonWasHit(sender: AnyObject) {
        if titleTextField.text.utf16Count > 0 {
            if entryTextView.text.utf16Count > 0 {
                
                
                activityIndicator.hidden = false
                view.userInteractionEnabled = false
                
                let journalEntry = PFObject(className: "journalEntry")
                journalEntry["title"] = titleTextField.text
                journalEntry["entry"] = entryTextView.text
                
                let formatter = NSDateFormatter()
                formatter.dateFormat = "yyyy-MM-dd"
                
                journalEntry["date"] = NSDate()//formatter.dateFromString("\(yearLabel.text)-\(monthLabel.text)-\(dateLabel.text)")
                
                
                
                journalEntry.saveInBackgroundWithBlock({ (succeeded, error) in
                    self.activityIndicator.hidden = true
                    self.view.userInteractionEnabled = true
                    
                    if error != nil {
                        UIAlertView.showError("Uh oh", errorMessage: "Couldn't reach the internet.")
                    } else {
                        self.navigationController?.popViewControllerAnimated(true)
                    }
                
                })
            } else {
                UIAlertView.showError("Uh oh", errorMessage: "Please make an entry")
            }
        } else {
            UIAlertView.showError("Uh oh", errorMessage: "Please enter a title")
        }
    }

    @IBAction func discardButtonWasHit(sender: AnyObject) {
        titleTextField.text = ""
        entryTextView.text = ""
    }

    @IBAction func backButtonWasHit(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        store.setValue(titleTextField.text, forKey: "saved-journal-title")
        store.setValue(entryTextView.text, forKey: "saved-journal-entry")
    }
    

}
