//
//  ViewController.swift
//  Tạo UILabel bằng code
//
//  Created by Đình Doanh on 9/15/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //Khởi tạo label
        let lable = UILabel(frame: CGRect(x: 80, y: 150, width: 300, height: 50))
        
        //Xét các thuộc tính cho label
        lable.text = "UILabel with code"
        
        // hai thuộc tính này giống nhau trả về màu của textlable
//        lable.textColor = UIColor.red
        lable.textColor = .systemPink
        
        lable.textAlignment = .left
        
        //addSubview label vào view chính lúc này Label mới có thể hiển thị trên view
        self.view.addSubview(lable)
        
    }


}

