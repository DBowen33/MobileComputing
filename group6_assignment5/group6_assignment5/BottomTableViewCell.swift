//
//  BottomTableViewCell.swift
//  group6_assignment5
//
//  Created by Denis Bowen on 10/9/19.
//  Copyright © 2019 Denis Bowen. All rights reserved.
//

import UIKit

class BottomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var scientificNameLabel: UILabel!
    @IBOutlet weak var classLabel: UILabel!
    @IBOutlet weak var sizeLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
