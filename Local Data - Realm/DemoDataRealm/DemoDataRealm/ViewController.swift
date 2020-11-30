//
//  ViewController.swift
//  DemoDataRealm
//
//  Created by Đình Doanh on 11/3/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        createData()
//        prinData()
//        updatePerson()
//        addDogToList()
        DBManager.sheredInstance.deleteAll()
    }
    func createData() {
        let dog1 = Dog()
        dog1.name = "Mike"
        dog1.color = "Gray"
        
        let dog2 = Dog()
        dog2.name = "Will"
        dog2.color = "Black"
        
        let person = Person()
        person.name = "Peter"
        person.address = "Canada"
        person.dogs.append(objectsIn: [dog1, dog2])
        
        DBManager.sheredInstance.addDog([dog1, dog2])
        DBManager.sheredInstance.addPerson(person)
    }
    
    func prinData(){
        let result = DBManager.sheredInstance.getAllData()
        for item in result {
            print("Person: \(item.name), \(item.address). \(item.ID)")
            for jtem in item.dogs{
                print(jtem.name, jtem.color ?? "no color")
            }
        }
    }
    
    func updatePerson() {
        let person = Person()
        person.name = "Peter"
        person.address = "Anh"
        DBManager.sheredInstance.updatePersonID("21A490C5-9384-46D6-94AF-BE7A70ADBCEB", person)
    }
    
    func addDogToList(){
        let dog1 = Dog()
        dog1.name = "Jonh"
        dog1.color = "yello"
        
        let dog2 = Dog()
        dog2.name = "Liky"
        dog2.color = "Black"
        DBManager.sheredInstance.addListDog("21A490C5-9384-46D6-94AF-BE7A70ADBCEB", [dog1, dog2])
    }
}

