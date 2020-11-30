//
//  ViewController.swift
//  Ứng dụng cộng hai số
//
//  Created by Đình Doanh on 9/22/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numA: UITextField!
    
    @IBOutlet weak var numB: UITextField!
    
    @IBOutlet weak var KQ: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func tapButton(_ sender: UIButton) {
        
        //Lấy text của hai TextField
        //guard let để check nil giá trị của TextField nếu nil thì return hàm dừng ở đó không chạy nữa
        
        guard let textNumA = numA.text else { return }
        
        guard let textNumB = numB.text else { return }
        //Ép kiểu từ String -> Int
        //Giá trị sau khi ép kiểu có thể nil nên dùng guard let để check
        //Nếu một trong hai số nil thực hiện phép cộng sẽ gây crash app
        
        guard let numberA = Int(textNumA) else { return }
        
        guard let numberB = Int(textNumB) else { return }
        
        //Thực hiện phép cộng

        let result = numberA + numberB
        
        
        
        //Gán kết quả cho Label

        KQ.text = "Kết Quả: " + String(result) //Ép kiểu từ Int -> String
        
    }
    
}

