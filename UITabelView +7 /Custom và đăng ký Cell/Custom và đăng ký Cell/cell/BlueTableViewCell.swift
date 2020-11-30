//
//  BlueTableViewCell.swift
//  Custom và đăng ký Cell
//
//  Created by Đình Doanh on 10/22/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class BlueTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        self.contentView.backgroundColor = UIColor.blue
    }

}
