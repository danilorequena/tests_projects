//
//  TableViewCell.swift
//  xibTest
//
//  Created by Danilo Requena on 11/02/19.
//  Copyright © 2019 Danilo Requena. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var labelNome: UILabel!
    @IBOutlet weak var labelAge: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
