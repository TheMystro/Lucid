//
//  HomeTabBarController.swift
//  Lucid
//
//  Created by Andrew Breckenridge on 2/28/15.
//  Copyright (c) 2015 Andrew Breckenridge. All rights reserved.
//

import UIKit

class HomeTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        tabBar.tintColor = UIColor.whiteColor()
        tabBar.frame.size.height += 60
    }
}
