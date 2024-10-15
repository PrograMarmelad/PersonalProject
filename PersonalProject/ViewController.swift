import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        updatePerson()
    }
    
    private func updatePerson() {
        
        let helper = Helper()
        
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
        
        helper.addPerson(userOne)
        helper.addPerson(userTwo)
        
        for person in helper.getPerson() {
            print(person.personInform.fullName)
        }
    }
}

