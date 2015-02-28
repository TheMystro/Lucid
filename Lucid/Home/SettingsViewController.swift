//
//  SettingsViewController.swift
//  Lucid
//
//  Created by Andrew Breckenridge on 2/28/15.
//  Copyright (c) 2015 Andrew Breckenridge. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    //*************************
    //** TABLE VIEW DELEGATE **
    //*************************
    
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
                println("d")
                cell.textLabel?.text = "SETTINGS"
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
                cell.textLabel?.text = "METHODS"
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
                cell.textLabel?.text = "DREAM JOURNAL"
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
        if indexPath.section == 1 {
            
            performSegueWithIdentifier("goToFunctions", sender: self)
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return 5
        case 1: return 4
        case 2: return 2
        default: fatalError("motherfuck")
        }
    }
    
}
