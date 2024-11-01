import Foundation

class Helper {
    private var user: [User] = []
    
    func addUser(_ people: User) {
        user.append(people)
    }
    
    func addUsers(_ peoples: [User]) {
        user.append(contentsOf: peoples)
    }
    
    func getUser() -> [User] {
        user
    }
}
