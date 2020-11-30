//
//  SecondViewController.swift
//  PassDataClosure
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var nameTexfile: UITextField!
    @IBOutlet weak var ageTextfile: UITextField!
    @IBOutlet weak var phoneTextfile: UITextField!
    
    var username : String?
    
    var passObject:((User) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = username {
            navigationItem.title = name
        }
        let saveButton = UIBarButtonItem(title: "Lưu", style: .done, target: self, action: #selector(saveData))
        navigationItem.rightBarButtonItem = saveButton
    }
    @objc func saveData(){
        guard let name = nameTexfile.text,
            let age = ageTextfile.text,
            let phone = phoneTextfile.text
            else {
                return
        }
        passObject?(User(name: name, age: Int(age) ?? 0, phone: phone))
        navigationController?.popViewController(animated: true)
    }
}
