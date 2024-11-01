import UIKit

class ViewController: UIViewController {
    
    private let helper = Helper()
    private let userRepository = UserRepository()
    
    private let fullNameLabel = UILabel()
    private let setupButton: UIButton = {
        let button = UIButton()
        button.setTitle("Show FullName", for: .normal)
        button.backgroundColor = .green
        button.frame = CGRect(x: 100, y: 150, width: 150, height: 50)
        return button
    }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .cyan
        view.alpha = 1.0
        updatePerson()
        
        setupLabel()
        view.addSubview(fullNameLabel)
        view.addSubview(setupButton)
    }
    
    private func updatePerson() {
        
        let users = userRepository.getUser()
        helper.addUsers(users)
        
        for user in helper.getUser() {
            print(user.personInform.fullName)
        }
    }
    
    private func setupLabel() {
        let randomFullName = helper.getUser().randomElement()
        fullNameLabel.text = randomFullName?.personInform.fullName
        fullNameLabel.font = .systemFont(ofSize: 25)
        fullNameLabel.textColor = .blue
        fullNameLabel.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
    }
}

