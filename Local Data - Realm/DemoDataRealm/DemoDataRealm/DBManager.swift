//
//  DBManager.swift
//  DemoDataRealm
//
//  Created by Đình Doanh on 11/3/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import Foundation
import RealmSwift

class DBManager {
    private var database: Realm!
    static let sheredInstance = DBManager()
    
    private init(){
        database = try! Realm()
        print(database.configuration.fileURL!)
    }
    func addPerson(_ person:Person) {
        try! database.write{
            person.ID = UUID().uuidString
            database.add(person)
        }
    }
    func addDog(_ dogs: [Dog]) {
        try! database.write{
            if dogs.count > 0{
                database.add(dogs)
            }
        }
        
    }
    func getAllData() -> Results<Person>{
        let result = database.objects(Person.self)
        return result 
    }
    func updatePersonID(_ id:String , _ object:Person) {
        object.ID = id
        try! database.write{
            database.add(object, update: .modified)
        }
    }
    func addListDog(_ id:String, _ object:[Dog]) {
        let predicate = NSPredicate(format: "ID=%@", id)
        let person = database.objects(Person.self).filter(predicate)
        try! database.write {
            person.first?.dogs.append(objectsIn: object)
        }
    }
    
    func deleteAll() {
        try! database.write{
            database.deleteAll()
        }
    }
}
