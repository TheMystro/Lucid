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
        
        Parse.enableLocalDatastore()
        Parse.setApplicationId("HdxN3Vt0JIGNCDDQs2hTB92k9Yu8JnKRJHUnJnr1", clientKey: "FBkOu8pIBWInYTQZs0gEA1vkVy2nboMbkaPIWX2f")
        PFAnalytics.trackAppOpenedWithLaunchOptionsInBackground(launchOptions, block: nil)
        
        return true
    }
}

