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
        
        var offset: CGFloat = 4
        
        tagView.backgroundColor = UIColor.redColor()
        
//        for i in ["sex", "or", "nah", "with", "music", "boy"] {
//            let l = UILabel()
//            l.text = i
//            l.frame = CGRectMake(offset + l.frame.origin.x, l.frame.origin.y, l.frame.width, l.frame.height)
//            
//            
//            l.backgroundColor = UIColor.blackColor()
//            l.textColor = UIColor.whiteColor()
//            
//            tagView.addSubview(l)
//            
//            offset += l.frame.width + 4
//        }
        let l = UILabel()
        l.textColor = UIColor.greenColor()
        l.text = "suck or nah"
//        l.frame = CGRectMake(5, 1, 20, 4)
        l.sizeToFit()
        
        tagView.addSubview(l)
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        println("selected on the inside")
    }

}
