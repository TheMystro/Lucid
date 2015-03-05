//
//  AppDelegate.swift
//  Lucid
//
//  Created by Andrew Breckenridge on 2/13/15.
//  Copyright (c) 2015 Andrew Breckenridge. All rights reserved.
//

import Foundation
import UIKit
import Fabric
import Crashlytics

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        Fabric.with([Crashlytics()])
        
//        Parse.enableLocalDatastore()
        Parse.setApplicationId("HdxN3Vt0JIGNCDDQs2hTB92k9Yu8JnKRJHUnJnr1", clientKey: "FBkOu8pIBWInYTQZs0gEA1vkVy2nboMbkaPIWX2f")
        PFAnalytics.trackAppOpenedWithLaunchOptionsInBackground(launchOptions, block: nil)
        PFFacebookUtils.initializeFacebook()
        
        let loggedIn = PFUser.currentUser() != nil
        let storyboard = loggedIn ? "Home" : "Login"
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.rootViewController = (UIStoryboard(name: storyboard, bundle: NSBundle.mainBundle()).instantiateInitialViewController() as UIViewController)
        window?.makeKeyAndVisible()
        
        return true
    }

        func application(application: UIApplication, openURL url: NSURL, sourceApplication: String?, annotation: AnyObject?) -> Bool {
        return FBAppCall.handleOpenURL(url, sourceApplication: sourceApplication, withSession: PFFacebookUtils.session())
    }
 
    func applicationDidBecomeActive(application: UIApplication) {
        FBAppCall.handleDidBecomeActiveWithSession(PFFacebookUtils.session())
    }
}

