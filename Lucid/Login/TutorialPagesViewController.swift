//
//  TutorialPagesViewController.swift
//  Lucid
//
//  Created by Andrew Breckenridge on 2/27/15.
//  Copyright (c) 2015 Andrew Breckenridge. All rights reserved.
//

import UIKit

class TutorialPagesViewController: UIPageViewController {
    private let dS = TutorialPageViewControllerDataSource()
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.dataSource = dS
    }
    
    
    override func viewDidLoad() {
        let startingViewController = (dS.viewControllerAtIndex(0) as TutorialPageVC!)
        let viewControllers = [startingViewController]
        
        self.setViewControllers(viewControllers, direction: .Forward, animated: true, completion: nil)
        edgesForExtendedLayout = .None
        
//        let backgroundImageView = UIImageView(frame: view.bounds)
//        backgroundImageView.contentMode = .ScaleAspectFit
//        backgroundImageView.image = UIImage(named: "onboarding_asset")!
//        
//        view.addSubview(backgroundImageView)
//        view.sendSubviewToBack(backgroundImageView)
        
        super.viewDidLoad()
        
    }

}
