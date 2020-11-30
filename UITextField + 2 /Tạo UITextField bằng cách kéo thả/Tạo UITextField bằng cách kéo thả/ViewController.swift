//
//  ViewController.swift
//  Tạo UITextField bằng cách kéo thả
//
//  Created by Đình Doanh on 9/20/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var myTextFile: UITextField!
    
    
    @IBAction func myTextfile(_ sender: Any) {
        print(myTextFile.text ?? "")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }


}

