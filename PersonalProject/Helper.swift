//
//  Helper.swift
//  PersonalProject
//
//  Created by Valera Zhdanov on 11.10.2024.
//

import Foundation

class Helper {
    private var person: [Person] = []
   
    func addPerson(_ people: Person) {
        person.append(people)
    }
    
    func getPerson() -> [Person] {
      person
    }
}
