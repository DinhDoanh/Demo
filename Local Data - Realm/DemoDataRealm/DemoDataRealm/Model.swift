//
//  Model.swift
//  DemoDataRealm
//
//  Created by Đình Doanh on 11/3/20.
//  Copyright © 2020 Doanh. All rights reserved.
//

import Foundation
import RealmSwift

class Person: Object {
    @objc dynamic var ID = ""
    @objc dynamic var name = ""
    @objc dynamic var address:String = ""
    let dogs = List<Dog>()
    
    override class func primaryKey() -> String? {
        return "ID"
    }
}

class Dog: Object {
    @objc dynamic var name = ""
    @objc dynamic var color: String? = nil
}
