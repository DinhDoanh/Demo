//
//  ViewController.swift
//  UIProgressView
//
//  Created by Đình Doanh on 9/24/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myProgressView: UIProgressView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true){ (_)in
            self.myProgressView.progress += 0.1
        }
    }


}

