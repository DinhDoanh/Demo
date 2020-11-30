//
//  ViewController.swift
//  Frame
//
//  Created by Đình Doanh on 10/6/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var contentImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func up(_ sender: Any) {
        //  kéo chỉnh vị trí ảnh

        contentImageView.frame.origin.y = contentImageView.frame.origin.y-5
        //  kéo chỉnh size ảnh
//        contentImageView.frame.size.width = contentImageView.frame.size.width-1
    }
    
    @IBAction func down(_ sender: Any) {
        contentImageView.frame.origin.y = contentImageView.frame.origin.y + 5
        //  kéo chỉnh size ảnh

//        contentImageView.frame.size.width = contentImageView.frame.size.width + 1
    }
    
    @IBAction func left(_ sender: Any) {
        contentImageView.frame.origin.x = contentImageView.frame.origin.x - 5
        
    }
    
    @IBAction func reight(_ sender: Any) {
        contentImageView.frame.origin.x = contentImageView.frame.origin.x + 5
        
    }
}

