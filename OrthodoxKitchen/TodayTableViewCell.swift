//
//  TodayTableViewCell.swift
//  OrthodoxKitchen
//
//  Created by Алексей Бабанов on 07.05.16.
//  Copyright © 2016 Алексей Бабанов. All rights reserved.
//

import UIKit

class TodayTableViewCell: UITableViewCell {
    // MARK: Properties
    
    //@IBOutlet weak var nameLabel: UILabel!
    //@IBOutlet weak var photoImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //self.layoutMargins = UIEdgeInsetsZero
        self.layoutMargins = UIEdgeInsetsMake(0, 0, 0, 0);
        self.textLabel?.numberOfLines = 3
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
