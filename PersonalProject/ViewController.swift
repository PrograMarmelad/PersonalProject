import UIKit

class ViewController: UIViewController {
    
    private let helper = Helper()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        updatePerson()
    }
    
    private func updatePerson() {
        
        let personOne = Person(
            name: "Валерий",
            surName: "Жданов"
        )
        let personTwo = Person(
            name: "Виктория",
            surName: "Жданова"
        )
        
        let userOne = User(
            login: "Valera",
            password: 222,
            personInform: personOne
        )
        let userTwo = User(
            login: "Vika",
            password: 333,
            personInform: personTwo
        )
        
        helper.addUser(userOne)
        helper.addUser(userTwo)
        
        for person in helper.getUser() {
            print(person.personInform.fullName)
        }
    }
}

