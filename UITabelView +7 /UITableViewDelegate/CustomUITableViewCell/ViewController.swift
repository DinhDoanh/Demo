//
//  ViewController.swift
//  CustomUITableViewCell
//
//  Created by Đình Doanh on 10/12/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit
struct MenuItem {
    var name: String
    var country: String
    var image: String
}

//UITableViewDataSource cung cấp các Function để hiển thị UITableView từ mảng
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var myTableView: UITableView!
    
    //Mảng để cho myTableView hiển thị
    let array = [ MenuItem(name: "Cà ri massaman (Thái Lan)", country: "Thái Lan", image: "1.jpg"),
                  MenuItem(name: "Pizza ở Napoli (Italia)", country: "Italia", image: "2.jpg"),
                  MenuItem(name: "Socola (Mexico)", country: "Mexico", image: "3.jpg"),
                  MenuItem(name: "Sushi (Nhật Bản)", country: "Nhật Bản", image: "4.jpg"),
                  MenuItem(name: "Vịt quay (Trung Quốc)", country: "Trung Quốc", image: "5.jpg"),
                  MenuItem(name: "Hamburger (Đức)", country: "Đức", image: "6.jpg"),
                  MenuItem(name: "Penang assam laksa (Malaysia)", country: "Malaysia", image: "7.jpg"),
                  MenuItem(name: "Tom yum goong (Thái Lan)", country: "Thái Lan", image: "8.jpg"),
                  MenuItem(name: "Kem (Mỹ)", country: "Mỹ", image: "9.jpg"),
                  MenuItem(name: "Gà Muamba (Gabon Châu Phi)", country: "Gabon Châu Phi", image: "10.jpg"),
    ]
    
    var selectedItem: MenuItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Để sử dụng UITableViewDataSource
        myTableView.dataSource = self
        
        myTableView.delegate = self
        
        myTableView.tableFooterView = UIView()
        
    }
    
    //-----Các Function của UITableViewDataSource
    
    //Số item (Cell) mà UITableView hiển thị bằng với số item trong mảng
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    //Trong mỗi Cell sẽ hiển thị những gì cấu hình trong hàm này
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! myTableViewCell
        let item = array[indexPath.item]
        cell.visulizeCell(with: item)
        
        return cell
    }
    
    //Truyền dữ liệu qua DetailViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let controller = segue.destination as? DetailViewController {
            controller.item = selectedItem
        }
    }
    
    //Phát hiện và xử lý sự kiện user chọn vào một cell
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        selectedItem = array[indexPath.item]
        self.performSegue(withIdentifier: "showDetailFlow", sender: nil)
    }
}