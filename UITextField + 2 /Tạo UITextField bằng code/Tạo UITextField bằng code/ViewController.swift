//
//  ViewController.swift
//  Tạo UITextField bằng code
//
//  Created by Đình Doanh on 9/20/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let myTextFile = UITextField(frame: CGRect (x: 30, y: 50, width: 300, height: 46))

    override func viewDidLoad() {
        super.viewDidLoad()

        
        //Khởi tạo và hiển thị textField
        myTextFile.borderStyle = .roundedRect
        myTextFile.placeholder = "My Text File"
        // tao clear Text 
        myTextFile.clearButtonMode = .always
        view.addSubview(myTextFile)
        
        //Tạo action cho textField

        myTextFile.addTarget(self, action: #selector(submit), for: .editingChanged)
        
    }

    //Hàm thực thi action textField

    @objc func submit() {
        print(myTextFile.text ?? "")
    }

}

