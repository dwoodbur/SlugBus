//
//  messageBoardCustomCell.swift
//  SlugBus
//
//  Created by Dylan Woodbury on 1/10/15.
//  Copyright (c) 2015 200Jeter. All rights reserved.
//

import UIKit

class messageBoardCustomCell: UITableViewCell {

    @IBOutlet weak var NameLabel: UIView!
    
    @IBOutlet weak var MessageLabel: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
