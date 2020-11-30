//
//  ViewController.swift
//  Custom và đăng ký Cell
//
//  Created by Đình Doanh on 10/21/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.delegate = self
        myTableView.dataSource = self
        
        //đăng ký cell có file xib(nib)
        
        myTableView.register(UINib(nibName: "RedTableViewCell", bundle: nil), forCellReuseIdentifier: "RedTableViewCell")
        
        //đăng ký cell ko có file xib
        
        myTableView.register(BlueTableViewCell.self, forCellReuseIdentifier: "BlueTableViewCell")
        
    }
}
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 2 == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "RedTableViewCell", for: indexPath) as! RedTableViewCell
            cell.textLabel?.text = "\(indexPath.row)"
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "BlueTableViewCell", for: indexPath) as! BlueTableViewCell
            return cell
        }
    }
    
}


