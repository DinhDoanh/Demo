//
//  ViewController.swift
//  UISwitch
//
//  Created by Đình Doanh on 9/23/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTapSwitch(_ sender: UISwitch) {
        
        if sender.isOn{
            myImg.image = UIImage(named: "01")
        }else{
            myImg.image = UIImage(named: "02")
        }
    }
    
}

