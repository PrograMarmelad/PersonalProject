import UIKit

class ViewController: UIViewController {
    
    private let helper = Helper()
    private let userRepository = UserRepository()
    private let fullNameLabel = UILabel()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .cyan
        view.alpha = 0.7
        updatePerson()
        
        setupLabel()
        view.addSubview(fullNameLabel)
    }
    
    private func updatePerson() {
        
        let users = userRepository.getUser()
        helper.addUsers(users[0], users[1])
        
        for user in helper.getUser() {
            print(user.personInform.fullName)
        }
    }
    
    private func setupLabel() {
        let randomFullName = userRepository.getUser().randomElement()
        fullNameLabel.text = randomFullName?.personInform.fullName
        fullNameLabel.font = .systemFont(ofSize: 25)
        fullNameLabel.textColor = .blue
        fullNameLabel.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
    }
}

