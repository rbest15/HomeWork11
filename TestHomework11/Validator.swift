import Foundation
import UIKit

public class Validator {
    
    static public func isValidPassword(_ pass: String) -> Bool {
        let passwordRegex = "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{6,}$"
        let passPred = NSPredicate(format: "SELF MATCHES %@", passwordRegex)
        return passPred.evaluate(with: pass)
    }
    
    static public func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    static public func checkText(_ tf1: UITextField, _ tf2: UITextField, _ butt: UIButton){
        if tf1.hasText && tf2.hasText {
            butt.isEnabled = true
        } else {
            butt.isEnabled = false
        }
    }
}
