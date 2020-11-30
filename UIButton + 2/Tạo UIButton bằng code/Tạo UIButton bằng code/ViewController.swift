//
//  ViewController.swift
//  Tạo UIButton bằng code
//
//  Created by Đình Doanh on 9/15/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Khởi tạo và set frame cho myButton

        let myButton = UIButton(frame: CGRect(x: 120, y: 150, width: 100, height: 60))
        // x = 120 cách mép trái
        // y = 120 cách mép phải 
        // width,height = rộng ,cao
        //Thay đổi các thuộc tính myButton
        
        myButton.setTitle("my Button", for: .normal)
        myButton.setTitleColor(.white, for: .normal)
        
        myButton.backgroundColor = UIColor.red
        
        //Action cho myButton

        myButton.addTarget(self, action: #selector(onTapMyButton), for: .touchUpInside)
        //addSubview myButton nếu không có dòng này thì myButton sẽ không hiển thị

        self.view.addSubview(myButton)
        

    }
    
    @objc func onTapMyButton() {
        print("Tapped...")
    }
}

