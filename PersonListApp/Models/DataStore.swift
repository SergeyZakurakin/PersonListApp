//
//  DataStore.swift
//  PersonListApp
//
//  Created by Sergey Zakurakin on 06/05/2024.
//

import Foundation

final class DataStore {
     
    static let shared = DataStore()
    
    var names = [
        "John",
        "Aaron",
        "Tim",
        "Ted",
        "Steven",
        "Sharon",
        "Nicola",
        "Allan",
        "Bruce",
        "Carl"
    ]
    
    let surnames = [
        "Smith",
        "Dow",
        "Isaacson",
        "Pennyworth",
        "Jankin",
        "Butler",
        "Black",
        "Robertson",
        "Murphy",
        "Williams"
    ]
    
    let emails = [
        "jjjj@mail.ru",
        "aaaa@mail.ru",
        "eeee@mail.ru",
        "hhhh@mail.ru",
        "wwww@mail.ru",
        "mmmm@mail.ru",
        "xxxx@mail.ru",
        "pppp@mail.ru",
        "ssss@mail.ru",
        "llll@mail.ru"
    ]
    
    let phones = [
        "745396026",
        "145036843",
        "287185656",
        "293520954",
        "562880225",
        "738594072",
        "825654134",
        "645898473",
        "432349845",
        "459477625"
    ]
    
    private init() {}
}

