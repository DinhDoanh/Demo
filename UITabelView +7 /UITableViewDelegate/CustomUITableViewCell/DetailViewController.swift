//
//  DetailViewController.swift
//  UITableViewDelegate
//
//  Created by Đình Doanh on 10/13/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var contenImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var countryLabel: UILabel!
    
    //Chứa dữ liệu khi UITableView truyền qua
    var item: MenuItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Hiển thị màn thông tin detail từ item
        contenImageView.image = UIImage(named: item!.image)
        nameLabel.text = item!.name
        countryLabel.text = item!.country
    }
    
    //Đóng màn hình detail
    
    @IBAction func backButton_clicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
