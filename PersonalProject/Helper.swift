import Foundation

class Helper {
    private var user: [User] = []
    
    func addUser(_ people: User) {
        user.append(people)
    }
    
    func addUsers(_ peoples: User...) {
        user.append(contentsOf: peoples)
    }
    
    func getUser() -> [User] {
        user
    }
}

class UserRepository {
    func getUser() -> [User] {
        
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
        
        return ([userOne, userTwo])
    }
}
