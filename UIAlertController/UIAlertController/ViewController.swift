//
//  ViewController.swift
//  UIAlertController
//
//  Created by Đình Doanh on 9/20/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    @IBAction func onTapButton(_ sender: UIButton) {
        //cách hiển thị 1
        let alert = UIAlertController(title: "Đây là tiêu đề", message: "Đây là nội dung", preferredStyle: .alert)
        //cách 2
        //        let alert = UIAlertController(title: "Đây là tiêu đề", message: "Đây là nội dugn", preferredStyle: .actionSheet)
        //Khởi tạo các action (các nút) cho alert
        let alertActionOk = UIAlertAction(title: " OK ", style: .default) { (act) in
            print("action OK") //action khi nhấn nút OK
        }
        
        let alertActionDestructive = UIAlertAction(title: "Destructive", style: .destructive){ (act) in
            
            print("action destructive")
            
        }
        
        let alertActionCancel = UIAlertAction(title: "Cancel", style: .cancel){ (act) in
            
            print("action destructive")//action khi nhấn nút Cancel
            
        }
        //Thêm các action vào alert
        
        alert.addAction(alertActionOk)
        alert.addAction(alertActionDestructive)
        alert.addAction(alertActionCancel)
        
        //Hiển thị alert
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func onTapButton2(_ sender: UIButton) {
        //cách 2
        let alert1 = UIAlertController(title: "Đây là tiêu đề", message: "Đây là nội dugn", preferredStyle: .actionSheet)
        
        //Khởi tạo các action (các nút) cho alert
        let alertActionOk1 = UIAlertAction(title: " Đồng Ý ", style: .default) { (act) in
            print("action OK") //action khi nhấn nút OK
        }
        
        let alertActionDestructive1 = UIAlertAction(title: "Không Đồng Ý", style: .destructive){ (act) in
            
            print("action destructive")
            
        }
        
        let alertActionCancel1 = UIAlertAction(title: "Cancel", style: .cancel){ (act) in
            
            print("action destructive")//action khi nhấn nút Cancel
            
        }
        //Thêm các action vào alert
        
        alert1.addAction(alertActionOk1)
        alert1.addAction(alertActionDestructive1)
        alert1.addAction(alertActionCancel1)
        
        //Hiển thị alert
        
        self.present(alert1, animated: true, completion: nil)
    }
    
}

