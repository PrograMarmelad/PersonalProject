import Foundation

class Helper {
    private var person: [User] = []
    
    func addPerson(_ people: User) {
        person.append(people)
    }
    
    func getPerson() -> [User] {
        person
    }
}
