//
//  ViewController.swift
//  UIStepper
//
//  Created by Đình Doanh on 9/28/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var munBer: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

 
    @IBAction func myStepper(_ sender: UIStepper) {
        munBer.text = String(sender.value)
    }
    
}

