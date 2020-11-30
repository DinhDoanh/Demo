//
//  ViewController.swift
//  UIScreen present bằng code
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

    @IBAction func goPress(_ sender: Any) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        
        let screenVC2 = storyboard.instantiateViewController(withIdentifier: "Screen2ViewController") as! Screen2ViewController
        screenVC2.name = "Doanh"
        
        screenVC2.modalPresentationStyle = .fullScreen
        self.present(screenVC2, animated: true, completion: nil)
    }
    
}

