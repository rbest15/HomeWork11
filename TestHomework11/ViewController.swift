import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var enterButton: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBAction func login(_ sender: Any) {
        checkText()
    }
    @IBAction func pass(_ sender: Any) {
        checkText()
    }
    
    @IBAction func enterPressed(_ sender: Any) {
        if Validator.isValidEmail(loginTextField.text!) && Validator.isValidPassword(passwordTextField.text!) {
            present(storyboard!.instantiateViewController(withIdentifier: "gongrats"), animated: true)
        } else {
            alertError()
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func checkText(){
        if loginTextField.hasText && passwordTextField.hasText {
            enterButton.isEnabled = true
        } else {
            enterButton.isEnabled = false
        }
    }
    

    

    
    func alertError(){
        if !Validator.isValidEmail(loginTextField.text!){
            showAlert("Enter valid email")
        } else if !Validator.isValidPassword(passwordTextField.text!) {
            showAlert("Enter valid password")
        }
    }
    
    func showAlert(_ text: String) {
        let notification = UIAlertController(title: text, message: nil, preferredStyle: .alert)
        notification.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action) in
            self.dismiss(animated: true)
        }))
        present(notification, animated: true)
    }
    
}

