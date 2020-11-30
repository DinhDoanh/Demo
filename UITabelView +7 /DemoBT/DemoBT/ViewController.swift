//
//  ViewController.swift
//  DemoBT
//
//  Created by Đình Doanh on 10/26/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit
struct BetaNew {
    var imageName: String
    var title: String
}

func createData() -> [BetaNew] {
    let beta1 = BetaNew(imageName: "25%.jpg", title: "BETA CINEMAS CHÍNH THỨC MỞ CỬA TRỞ LẠI TỪ 9/5")
    let beta2 = BetaNew(imageName: "sale.jpeg", title: "ĐỒNG GIÁ 40K PHIM 'DẤU ẤN VÔ CỰC'")
    let beta3 = BetaNew(imageName: "Xahang.jpg", title: "ĐỒNG GIÁ 40K PHIM 'DẤU ẤN VÔ CỰC'")
    
    
    return [beta1, beta2 ,beta3]
}

class ViewController: UIViewController {
    
    let datas = createData()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        // đăng ký cell có file xib (nib)
        tableView.register(UINib(nibName: "BetaTableViewCell", bundle: nil), forCellReuseIdentifier: "BetaTableViewCell")
        
        tableView.tableFooterView = UIView()
        tableView.separatorStyle = .none
        tableView.showsVerticalScrollIndicator = false
    }
    
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BetaTableViewCell", for: indexPath) as! BetaTableViewCell
        cell.photoImageView.image = UIImage(named: datas[indexPath.row].imageName)
        cell.titleLabel.text = datas[indexPath.row].title
        return cell
    }
    
    
}
