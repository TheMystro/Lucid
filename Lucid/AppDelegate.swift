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
        
        
//        for font in UIFont.familyNames() {
//            for name in UIFont.fontNamesForFamilyName(font as String) {
//                println(name)
//            }
//        }
        
        return true
    }
}

