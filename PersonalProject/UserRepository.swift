import Foundation

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
