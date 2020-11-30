//
//  ViewController.swift
//  UIPickerView
//
//  Created by Đình Doanh on 10/3/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate{
    
    
    
    @IBOutlet weak var myPickerView: UIPickerView!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    //Mảng hình và tên món ăn tương ứng
    
    let arrayImage = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg", "10.jpg"]

    let arrayName = ["Cà ri massaman (Thái Lan)", "Pizza ở Napoli (Italia)", "Socola (Mexico)", "Sushi (Nhật Bản)", "Vịt quay (Trung Quốc)", "Hamburger (Đức)", "Penang assam laksa (Malaysia)", "Tom yum goong (Thái Lan)", "Kem (Mỹ)", "Gà Muamba (Gabon Châu Phi)"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Mặc định set cho UILabel tên món ăn thứ 0
        
        resultLabel.text = arrayName[0]
    }
    
    //Số Components của UIPickerView
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        //Số lượng item hiển thị trong UIPickerView
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return arrayImage.count
        }
        
        //Nếu muốn UIPickerView hiển thị chỉ tên món ăn
    //    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    //        return arrayName[row]
    //    }
        
        //Mỗi item của UIPickerView tương ứng với một phần tử trong arrayImage
        func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
            let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 180, height: 150))
            imageView.image = UIImage(named: arrayImage[row])
            return imageView
        }
        
        //Set chiều cao cho mỗi item trong UIPickerView
        func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
            return 70
        }
        
        //Bắt sự kiện khi UIPickerView scroll đến 1 item
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            let name = arrayName[row]
            resultLabel.text = name
        }
}

