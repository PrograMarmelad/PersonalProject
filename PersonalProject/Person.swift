//
//  Person.swift
//  PersonalProject
//
//  Created by Valera Zhdanov on 10.10.2024.
//

import Foundation

class Person {
    var name: String
    var surName: String
    var fullName: String {
        "\(name) \(surName)"
    }
    
    init(name: String, surName: String) {
        self.name = name
        self.surName = surName
    }
}
