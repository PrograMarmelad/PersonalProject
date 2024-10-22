import Foundation

class Helper {
    private var user: [User] = []
    
    func addUser(_ people: User) {
        user.append(people)
    }
    
    func getUser() -> [User] {
        user
    }
}
