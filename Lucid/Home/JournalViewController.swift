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
    override func viewDidLoad() {
        super.viewDidLoad()
        addTextDismiss()
        
        for i in [titleTextField] {
            let spacerView = UIView(frame: CGRectMake(0, 0, 10, 10))
            i.leftViewMode = .Always
            i.leftView = spacerView
        }
        
        
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
