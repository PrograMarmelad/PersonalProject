//
//  ViewController.swift
//  PersonalProject
//
//  Created by Valera Zhdanov on 06.10.2024.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        updatePerson()
        
       /* Задание 6
        let person = Person()
        print("Меня зовут \(person.name), я создал своё первое приложение")
        print(person.fullName)
        */
        // Do any additional setup after loading the view.
    }
    
    private func updatePerson() {
        
        let helper = Helper()
        let personOne = Person(name: "Валерий", surName: "Жданов")
        let personTwo = Person(name: "Виктория", surName: "Жданова")
        
        helper.addPerson(personOne)
        helper.addPerson(personTwo)
        
        
        for person in helper.getPerson() {
            print(person.fullName)
        }
    }
}

