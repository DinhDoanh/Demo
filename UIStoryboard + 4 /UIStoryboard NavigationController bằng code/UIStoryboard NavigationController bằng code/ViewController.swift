//
//  ViewController.swift
//  UIStoryboard NavigationController bằng code
//
//  Created by Đình Doanh on 10/8/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Home"
        
        // tạo buttion
        let seachButon = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: nil)
        
        let heartButton = UIBarButtonItem(image: UIImage(named: "heart."), style: .done, target: self, action: nil)

        let goButton = UIBarButtonItem(title: "GO", style: .done, target: self, action: #selector(GoPress))
        
        navigationItem.leftBarButtonItems = [ heartButton, seachButon]
        navigationItem.rightBarButtonItem = goButton
        
    }
    @objc func GoPress(){
        let vc1 = GoViewController()
        self.navigationController?.pushViewController(vc1, animated: true)
    }
}

