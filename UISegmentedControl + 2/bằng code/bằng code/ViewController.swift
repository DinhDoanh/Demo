//
//  ViewController.swift
//  bằng code
//
//  Created by Đình Doanh on 9/29/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Khởi tạo UISegmentedControl với frame
        let mySegmet = UISegmentedControl (frame: CGRect(x: 50, y: 120, width: 250, height: 30))
        
        //Thêm từng button cho Segment
        mySegmet.insertSegment(withTitle:"First", at: 0, animated: true)
        mySegmet.insertSegment(withTitle: "Second", at: 1, animated: true)
        mySegmet.insertSegment(withTitle: "Third", at: 2, animated: true)
        mySegmet.insertSegment(with: UIImage(systemName: "folder.fill"), at: 3, animated: true)
        
        //Chọn vị trí selectedSegmentIndex mặc định là 0
        mySegmet.selectedSegmentIndex = 2
        
        //Tạo action cho Segment
        mySegmet.addTarget(self, action: #selector(onTapSegment2), for: .valueChanged)
        
        //Hiển thị segment trên view
        view.addSubview(mySegmet)
    }
    
    @objc func onTapSegment2(_ sender: UISegmentedControl) {
        
        switch  sender.selectedSegmentIndex{
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
