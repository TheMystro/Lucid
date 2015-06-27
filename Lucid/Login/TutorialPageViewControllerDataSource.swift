//
//  TutorialPageViewControllerDataSource.swift
//  Lucid
//
//  Created by Andrew Breckenridge on 2/27/15.
//  Copyright (c) 2015 Andrew Breckenridge. All rights reserved.
//

import UIKit

class TutorialPageViewControllerDataSource: NSObject, UIPageViewControllerDataSource {
    let pageTitles = ["Page Uno", "Doosra Page", "Pagé Trois", "Login now"]
    var currentIndex: Int = Int()
    
    func viewControllerAtIndex(index: Int) -> TutorialPageVC? {
        let vc = UIStoryboard(name: "Login", bundle: nil).instantiateViewControllerWithIdentifier("tutorialPageVC") as! TutorialPageVC
        
        currentIndex = index
        vc.pageIndex = currentIndex
        
        vc.title = pageTitles[currentIndex]
        
        return vc
    }
    
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! TutorialPageVC).pageIndex
        
        switch index {
        case 0:
            return nil
        case NSNotFound:
            fatalError("NSNotFound")
        case pageTitles.count...(Int.max - 1):
            return nil
        default:
            index--
            return viewControllerAtIndex(index)
        }
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! TutorialPageVC).pageIndex
        index++
        
        switch index {
        case 0:
            return nil
        case NSNotFound:
            fatalError("NSNotFound")
        case pageTitles.count...(Int.max-1):
            return nil
        default:
            return viewControllerAtIndex(index)
        }
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 4
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return currentIndex
    }
}
