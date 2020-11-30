//
//  ViewController.swift
//  Truyền dữ liệu giữa các màn hình
//
//  Created by Đình Doanh on 10/10/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var ageLable: UILabel!
    @IBOutlet weak var phoneLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        
        let goButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(createData))
        navigationItem.rightBarButtonItem = goButton
    }
    
    @objc func createData(){
        let screen2 = SecondViewController()
        screen2.username = "Input"
        screen2.passObject = {[ weak self ] data in
            guard let strongSelf = self else{
                return
            }
            strongSelf.nameLable.text = "Name: \(data.name)"
            strongSelf.ageLable.text = "Age: \(data.age)"
            strongSelf.phoneLable.text = "Phone: \( data.phone)"
        }
        self.navigationController?.pushViewController(screen2, animated: true)
    }
    
}

