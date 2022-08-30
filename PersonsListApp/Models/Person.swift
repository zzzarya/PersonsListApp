//
//  Person.swift
//  PersonsListApp
//
//  Created by Антон Заричный on 30.08.2022.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let number: String
    let email: String
}

extension Person {
   static func getPersonList() -> [Person] {
       let personInfo = DataManager()
       
        let names = personInfo.names.shuffled()
        let surnames = personInfo.surnames.shuffled()
        let numbers = personInfo.numbers.shuffled()
        let emails = personInfo.emails.shuffled()
        
        var persons: [Person] = []
        
        for index in 0...9 {
            let person = Person(name: names[index],
                                surname: surnames[index],
                                number: numbers[index],
                                email: emails[index])
            persons.append(person)
        }
        
        return persons
    }
}


