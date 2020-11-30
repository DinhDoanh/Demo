//
//  RedTableViewCell.swift
//  Custom và đăng ký Cell
//
//  Created by Đình Doanh on 10/22/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class RedTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        self.contentView.backgroundColor = UIColor.red
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
