//
//  FunctionViewController.swift
//  
//
//  Created by Andrew Breckenridge on 2/28/15.
//
//

import UIKit

class FunctionViewController: UIViewController {
    @IBOutlet weak var backButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    @IBAction func backWasHit(sender: AnyObject) {
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
