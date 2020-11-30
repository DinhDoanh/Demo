//
//  BetaTableViewCell.swift
//  DemoBT
//
//  Created by Đình Doanh on 10/26/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class BetaTableViewCell: UITableViewCell {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
