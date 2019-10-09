//
//  AnimalsTableViewCell.swift
//  group6_assignment5
//
//  Created by Denis Bowen on 10/9/19.
//  Copyright © 2019 Denis Bowen. All rights reserved.
//

import UIKit

class AnimalsTableViewCell: UITableViewCell {
    
    //MARK: Properties
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var scientificNameLabel: UILabel!
    @IBOutlet weak var classLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var scientificNameDataLabel: UILabel!
    
    @IBOutlet weak var classDataLabel: UILabel!
    @IBOutlet weak var weightDataLabel: UILabel!
    
    
    
    
    
    

    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
