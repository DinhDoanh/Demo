//
//  Screen2ViewController.swift
//  UIScreen present bằng code
//
//  Created by Đình Doanh on 10/8/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class Screen2ViewController: UIViewController {
    
    @IBOutlet weak var nameLalbale: UILabel!
    
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = name {
            nameLalbale.text = name
            
        }
    }
    
    
    @IBAction func dismissPree(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
