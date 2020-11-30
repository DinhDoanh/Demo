//
//  myTableViewCell.swift
//  CustomUITableViewCell
//
//  Created by Đình Doanh on 10/12/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class myTableViewCell: UITableViewCell {

    @IBOutlet weak var contenImageView: UIImageView!
       
       @IBOutlet weak var nameLabel: UILabel!
       
       @IBOutlet weak var contryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
//    Trong MyTableViewCell, class điều khiển custom cell chúng ta thêm function:

   func visulizeCell(with item: MenuItem) {
      contenImageView.image = UIImage(named: item.image)
      nameLabel.text = item.name
      contryLabel.text = item.country
    }

}
