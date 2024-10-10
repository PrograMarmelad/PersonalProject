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
        
        let person = Person()
        print("Меня зовут \(person.name), я создал своё первое приложение")
        print(person.fullName)
        // Do any additional setup after loading the view.
    }
}

