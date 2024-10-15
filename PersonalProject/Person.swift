import Foundation

struct Person {
    let name: String
    let surName: String
    var fullName: String {
        "\(name) \(surName)"
    }
}

struct User {
    let login: String
    let password: Int
    var personInform: Person
}
