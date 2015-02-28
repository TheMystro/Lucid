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
        var cell: UITableViewCell
        
        if indexPath.row == 0 {
            cell = tableView.dequeueReusableCellWithIdentifier("header") as UITableViewCell
            cell.selectionStyle = .None
        } else {
            switch indexPath.section {
            case 4:
                cell = tableView.dequeueReusableCellWithIdentifier("mainVolumeCell") as UITableViewCell
            default:
                cell = tableView.dequeueReusableCellWithIdentifier("mainCell") as UITableViewCell
                cell.accessoryType = .DisclosureIndicator
            }
        }
        
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                cell.textLabel?.text = "Settings"
            case 1:
                cell.textLabel?.text = "Sound"
                cell.detailTextLabel?.text = "Gymnopedie"
            case 2:
                cell.textLabel?.text = "Vibration"
                cell.detailTextLabel?.text = "As Backup"
            case 3:
                cell.textLabel?.text = "Reminders"
                cell.detailTextLabel?.text = "Only Display"
            case 4:
                cell.textLabel?.text = "Volume"
            default:
                cell.textLabel?.text = "you is fucked"
            }
        case 1:
            switch indexPath.row {
            case 0:
                cell.textLabel?.text = "Methods"
            case 1:
                cell.textLabel?.text = "Reality Check"
                cell.detailTextLabel?.text = "On"
            case 2:
                cell.textLabel?.text = "Light Alarm"
                cell.detailTextLabel?.text = "On"
            default:
                cell.textLabel?.text = "Night Wake"
            }
        case 2:
            switch indexPath.row {
            case 0:
                cell.textLabel?.text = "Dream Journal"
            case 1:
                cell.textLabel?.text = "Pattern Tracker"
                cell.detailTextLabel?.text = "On"
            default:
                cell.textLabel?.text = "you is fucked"
            }
        default:
            fatalError("motherfuck")
        }
        
        return cell
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section == 0 {
            tableView.deselectRowAtIndexPath(indexPath, animated: false)
        } else {
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return 5
        case 1: return 4
        case 2: return 3
        default: fatalError("motherfuck")
        }
    }
}
