//
//  ViewController.swift
//  PersonalProject
//
//  Created by Valera Zhdanov on 06.10.2024.
//

import UIKit

class ViewController: UIViewController {
let name = "Валерий"
let surName = "Жданов"
    var fullName: String {
        "\(name) \(surName)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Меня зовут \(name), я создал своё первое приложение")
        print(fullName)
        // Do any additional setup after loading the view.
    }


}

