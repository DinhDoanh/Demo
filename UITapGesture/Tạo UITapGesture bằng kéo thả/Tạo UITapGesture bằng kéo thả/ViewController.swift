//
//  ViewController.swift
//  Tạo UITapGesture bằng kéo thả
//
//  Created by Đình Doanh on 10/4/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    var isPig = true

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapGesture_Clicked(_ sender: UITapGestureRecognizer) {
        if isPig {
            imageView.image = UIImage(named: "1.jpg")
        }else{
            imageView.image = UIImage(named: "8.jpg")
        }
        isPig = !isPig
    }
    
}

