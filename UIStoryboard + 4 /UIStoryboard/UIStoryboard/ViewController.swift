//
//  ViewController.swift
//  UIStoryboard
//
//  Created by Đình Doanh on 10/7/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func unwindFromScreen2(_ sender: UIStoryboardSegue){
        print("Unwind")
    }
}

