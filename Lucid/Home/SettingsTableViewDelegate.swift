//
//  SettingsTableViewDelegate.swift
//  Lucid
//
//  Created by Andrew Breckenridge on 2/28/15.
//  Copyright (c) 2015 Andrew Breckenridge. All rights reserved.
//

import UIKit

class SettingsTableViewDelegate: NSObject, UITableViewDelegate, UITableViewDataSource {
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        if indexPath.section == 0 {
            var cell = tableView.dequeueReusableCellWithIdentifier("header") as UITableViewCell
        } else {
            var cell = tableView.dequeueReusableCellWithIdentifier("mainCell") as UITableViewCell
        }
        
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                cell.textLabel?.text = "Header #0"
            case 1:
                println("dsa")
//                cell.textLabel?.text = "#1"
            case 2:
                cell.textLabel?.text = "#2"
            default:
                cell.textLabel?.text = "you is fucked"
            }
        case 1:
            switch indexPath.row {
            case 0:
                cell.textLabel?.text = "Header #0"
            case 1:
                cell.textLabel?.text = "#1"
            case 2:
                cell.textLabel?.text = "#2"
            default:
                cell.textLabel?.text = "you is fucked"
            }
        case 2:
            switch indexPath.row {
            case 0:
                cell.textLabel?.text = "Header #0"
            case 1:
                cell.textLabel?.text = "#1"
            case 2:
                cell.textLabel?.text = "#2"
            default:
                cell.textLabel?.text = "you is fucked"
            }
        default:
            fatalError("motherfuck")
        }
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
}
