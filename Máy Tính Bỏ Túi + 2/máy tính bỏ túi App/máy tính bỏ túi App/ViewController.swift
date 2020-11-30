//
//  ViewController.swift
//  máy tính bỏ túi App
//
//  Created by Đình Doanh on 9/22/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var KQ: UITextField!
    
    var so1 : Int!
    var so2 : Int!
    var dau : String!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func num0(_ sender: Any) {
        //lấy giá trị
        
        var kp = KQ.text ?? ""
        kp += "0"
        
        // gán ngược lại
        
        KQ.text = kp
    }
    
    @IBAction func num1(_ sender: Any) {
        //lấy giá trị
        
        var kp = KQ.text ?? ""
        kp += "1"
        
        // gán ngược lại
        
        KQ.text = kp
    }
    
    @IBAction func num2(_ sender: Any) {
        //lấy giá trị
        
        var kp = KQ.text ?? ""
        kp += "2"
        
        // gán ngược lại
        
        KQ.text = kp
    }
    
    @IBAction func num3(_ sender: Any) {
        //lấy giá trị
        
        var kp = KQ.text ?? ""
        kp += "3"
        
        // gán ngược lại
        
        KQ.text = kp
    }
    
    @IBAction func num4(_ sender: Any) {
        //lấy giá trị
        
        var kp = KQ.text ?? ""
        kp += "4"
        
        // gán ngược lại
        
        KQ.text = kp
    }
    
    @IBAction func num5(_ sender: Any) {
        //lấy giá trị
        
        var kp = KQ.text ?? ""
        kp += "5"
        
        // gán ngược lại
        
        KQ.text = kp
    }
    
    @IBAction func num6(_ sender: Any) {
        //lấy giá trị
        
        var kp = KQ.text ?? ""
        kp += "6"
        
        // gán ngược lại
        
        KQ.text = kp
    }
    
    @IBAction func num7(_ sender: Any) {
        //lấy giá trị
        
        var kp = KQ.text ?? ""
        kp += "7"
        
        // gán ngược lại
        
        KQ.text = kp
    }
    
    @IBAction func num8(_ sender: Any) {
        //lấy giá trị
        
        var kp = KQ.text ?? ""
        kp += "8"
        
        // gán ngược lại
        
        KQ.text = kp
    }
    
    @IBAction func num9(_ sender: Any) {
        //lấy giá trị
        
        var kp = KQ.text ?? ""
        kp += "9"
        
        // gán ngược lại
        
        KQ.text = kp
    }
    
    @IBAction func btCong(_ sender: Any) {
        dau = "+"
        
        let values = KQ.text ?? "0"
        so1 = Int(values)
        
        KQ.text = ""
    }
    
    @IBAction func btTru(_ sender: Any) {
        dau = "-"
        let values = KQ.text ?? "0"
        so1 = Int(values)
        
        KQ.text = ""
    }
    
    @IBAction func btNhan(_ sender: Any) {
        dau = "*"
        let values = KQ.text ?? "0"
        so1 = Int(values)
        
        KQ.text = ""
    }
    
    @IBAction func btChia(_ sender: Any) {
        dau = "/"
        let values = KQ.text ?? "0"
        so1 = Int(values)
        
        KQ.text = ""
    }
    
    @IBAction func result(_ sender: Any) {
        let values = KQ.text ?? "0"
        
        so2 = Int(values)
        
        var finaresult = 0
        if dau == "+" {
            finaresult = so1 + so2
        }else if dau == "-" {
            finaresult = so1 - so2

        }else if dau == "*" {
            finaresult = so1 * so2

        }else if dau == "/" {
            finaresult = so1 / so2

        }
        
        KQ.text = "\(finaresult)"
    }
    
    @IBAction func btC(_ sender: Any) {
        KQ.text = ""
    }
}

