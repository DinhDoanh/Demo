//
//  GoViewController.swift
//  UIStoryboard NavigationController bằng code
//
//  Created by Đình Doanh on 10/8/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class GoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Home 2"
        
        let popButton = UIBarButtonItem(title: "POP", style: .done, target: self, action: #selector(popView))
        
        navigationItem.rightBarButtonItem = popButton
    }
    
    
    @objc func popView(){
        self.navigationController?.popViewController(animated: true)
        
    }
    
}
