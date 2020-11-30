//
//  ViewController.swift
//  UIDatePicker
//
//  Created by Đình Doanh on 9/29/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myDatePicker: UIDatePicker!
    
    @IBOutlet weak var myResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        let stringDate = "20/11/2011"
            
            //Tạo DateFormatter
            let dateFormater = DateFormatter()
            
            //Chọn một định dạng để format tương ứng với stringDate
            dateFormater.dateFormat = "dd/MM/yyyy"
            
            //Tạo Date từ String
            let date = dateFormater.date(from: stringDate)
            
            //Set ngày cho datePicker
            myDatePicker.setDate(date!, animated: true)
        }
    @IBAction func valueChanged(_ sender: UIDatePicker) {
        let selectDate = sender.date
        
        //Tạo DateFormatter
        let dateFormater = DateFormatter()
        
        //Format ngày bạn muốn hiển thị trên Label
        dateFormater.dateFormat = "dd/MM/yyyy"
        
        //Tạo String từ Date
        let stringDate = dateFormater.string(from: selectDate)
        
        //Hiển thị lên label
        myResult.text = "\(stringDate)"
        print(selectDate)
    }
        
    }

