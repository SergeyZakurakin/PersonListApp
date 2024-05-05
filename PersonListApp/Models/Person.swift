//
//  Person.swift
//  PersonListApp
//
//  Created by Sergey Zakurakin on 05/05/2024.
//

import Foundation


struct Person {
    
    let name: String
    let surname: String
    let phone: Int
    let email: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    
    static func personData() -> [Person]{
        [
            Person(name: "John", surname: "Smith", phone: 0979074455, email: "77@gmail.com"),
            Person(name: "Sam", surname: "Ember", phone: 0978855447, email: "rele@gmail.com"),
            Person(name: "Michael", surname: "Relit", phone: 0974833224, email: "anami@gmail.com"),
            Person(name: "Robert", surname: "Fiver", phone: 0974844339, email: "kvitor@gmail.com"),
            Person(name: "Rebeca", surname: "Swift", phone: 0978897332, email: "porre@gmail.com"),
            Person(name: "Gabriel", surname: "Khust", phone: 0977711335, email: "mnbgip@gmail.com"),
        
        ]
    }
    
}
