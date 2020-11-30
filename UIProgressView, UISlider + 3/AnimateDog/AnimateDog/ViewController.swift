//
//  ViewController.swift
//  AnimateDog
//
//  Created by Đình Doanh on 9/24/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func myUISlider(_ sender: UISlider) {
        let value = sender.value
        
        let intValue = Int(value)
        
        myImg.image = UIImage(named: "\(intValue).png")
    }
}

