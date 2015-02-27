//
//  TutorialPageVC.swift
//  Lucid
//
//  Created by Andrew Breckenridge on 2/27/15.
//  Copyright (c) 2015 Andrew Breckenridge. All rights reserved.
//

import UIKit

class TutorialPageVC: UIViewController {
    var pageIndex = Int()
    @IBOutlet weak var mainTextLabel: UILabel!
    @IBOutlet weak var mustBeMaybellineButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainTextLabel.text = title
        
        if pageIndex == 3 {
            mustBeMaybellineButton.hidden = false
        } else {
            mustBeMaybellineButton.hidden = true
        }
    }
}
