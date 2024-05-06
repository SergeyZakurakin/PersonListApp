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
    let phoneNumber: String
    let email: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    
    static func getContactList() -> [Person]{
        var persons: [Person] = []
        let dataStore = DataStore.shared
        
        
        // перемешиваем в массиве данные, типа как сет
        let names = dataStore.names.shuffled()
        let surnames = dataStore.surnames.shuffled()
        let phones = dataStore.phones.shuffled()
        let emails = dataStore.emails.shuffled()
        
        
        
        
        
        // вычисляем минимальное количество итераций для цикла
        let iterationCount = min(
            names.count,
            surnames.count,
            phones.count,
            emails.count
            )
        
        
        
        // добавляем в новый массив значения с других массивов
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phoneNumber: phones[index],
                email: emails[index]
            )
            persons.append(person)
        }
        
        return persons
        
    }
    
}
