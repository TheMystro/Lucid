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
        buttonImageView.image = UIImage(CGImage: buttonImageView.image?.CGImage!, scale: buttonImageView.image?.scale as CGFloat!, orientation: .DownMirrored)
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        println("selected on the inside")
    }

}
