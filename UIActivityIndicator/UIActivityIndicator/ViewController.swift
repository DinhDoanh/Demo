//
//  ViewController.swift
//  UIActivityIndicator
//
//  Created by Đình Doanh on 9/24/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLoading: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btStart(_ sender: UIButton) {
        myLoading.startAnimating()
    }
    
    @IBAction func myStop(_ sender: UIButton) {
        myLoading.stopAnimating()
    }
}

