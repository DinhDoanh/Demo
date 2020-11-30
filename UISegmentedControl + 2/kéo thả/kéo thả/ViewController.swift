//
//  ViewController.swift
//  kéo thả
//
//  Created by Đình Doanh on 9/29/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func mySegmentedControl(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            print("Segment 0 is selected")
            case 1:
            print("Segment 1 is selected")
            case 2:
            print("Segment 2 is selected")
            case 3:
            print("Segment 3 is selected")
        default:
            break
        }
    }
}

