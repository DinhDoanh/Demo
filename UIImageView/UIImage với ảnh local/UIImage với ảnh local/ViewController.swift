//
//  ViewController.swift
//  UIImage với ảnh local
//
//  Created by Đình Doanh on 9/23/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTapbutton(_ sender: UIButton) {
        
         //Load image local bằng code
        imgView.image = UIImage(named: "demo")
        
        
        //Load image từ URL
        
        guard let url = URL(string: "https://blog.tomasmahrik.com/wp-content/uploads/2015/06/swift.jpg") else { return }

        do {
            //B2: Get data từ URL vừa tạo
            
            let data = try Data(contentsOf: url)
            
            //B3: Set data image cho UIImage view

            imgView.image = UIImage(data: data)
        }catch{
            print(error.localizedDescription)
        }
    }
    
}

