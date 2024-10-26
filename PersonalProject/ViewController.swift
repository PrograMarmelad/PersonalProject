import UIKit

class ViewController: UIViewController {
    
    private let helper = Helper()
    private let userRepository = UserRepository()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .cyan
        view.alpha = 0.1
        updatePerson()
    }
    
    private func updatePerson() {
        
        let users = userRepository.getUser()
        helper.addUsers(users[0], users[1])
        
        for user in helper.getUser() {
            print(user.personInform.fullName)
        }
    }
}

