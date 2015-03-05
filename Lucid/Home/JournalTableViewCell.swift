//
//  JournalTableViewCell.swift
//  Lucid
//
//  Created by Andrew Breckenridge on 3/4/15.
//  Copyright (c) 2015 Andrew Breckenridge. All rights reserved.
//

import UIKit

class JournalTableViewCell: UITableViewCell {

    @IBOutlet weak var dateView: UIView!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var monthLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var tagView: UIView!
    
    @IBOutlet weak var buttonImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        var offset: CGFloat = 0
        
        
        for i in ["sex", "or", "nah", "with", "music", "boy"] {
            let l = UILabel()
            l.textColor = UIColor.whiteColor()
            l.backgroundColor = UIColor.blackColor()
            l.font = UIFont(name: "Cronos Pro", size: 13)

            l.sizeToFit()
            l.frame = CGRectMake(offset + l.frame.origin.x - 1, l.frame.origin.y, l.frame.width + 4, l.frame.height)
            
            l.layer.cornerRadius = l.frame.height / 2
            l.clipsToBounds = true
            
            tagView.addSubview(l)
            
            offset += l.frame.width + 4
        }
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        println("selected on the inside")
    }

}
