//
//  ViewController.swift
//  thêm section vào TableView
//
//  Created by Đình Doanh on 10/17/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.delegate = self
        myTableView.dataSource = self
        
    }
    
    
}
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 5
        case 1:
            return 10
        case 2:
            return 15
        default:
            return 0
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell0")
            cell.textLabel?.text = "\(indexPath.row)"
            return cell
        case 1:
            let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "Cell01")
            cell.detailTextLabel?.text = "Đây là subtitle"
            cell.textLabel?.text = "\(indexPath.row)"
            return cell
        case 2:
            let cell = UITableViewCell(style: .value2, reuseIdentifier: "Cell02")
            cell.detailTextLabel?.text = "Đây là subtitle - style value 2"
            cell.textLabel?.text = "\(indexPath.row)"
            return cell
        case 3:
            let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell03")
            cell.textLabel?.text = "\(indexPath.row)"
            return cell
        default:
            return UITableViewCell()
        }
    }
    func tableView(_ tableView: UITableView , titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Section 0"
        case 1:
            return "Section 1"
        case 2:
            return "Section 2"
        case 3:
            return "Section 3"
        default:
            return " "
        }
    }
    
}
