//
//  SettingsViewController.swift
//  Lucid
//
//  Created by Andrew Breckenridge on 2/28/15.
//  Copyright (c) 2015 Andrew Breckenridge. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    
    let dS = SettingsTableViewDelegate()
    
    override func viewDidLoad() {
        tableView.delegate = dS
        tableView.dataSource = dS
    }
}
