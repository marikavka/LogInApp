//
//  ViewController.swift
//  LogInApp
//
//  Created by Мария Купчинская on 09.05.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? WelcomeViewController else { return }
        destinationVC.userNme = userNameTextField.text
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == "User", passwordTextField.text == "Password" else {
            let alertController = UIAlertController(title: "Invalid login or password", message: "Please, enter correct login and password", preferredStyle: .alert)
            let alertOkAction = UIAlertAction(title: "Ok", style: .default) { UIAlertAction in
                self.passwordTextField.text = ""
            }
            alertController.addAction(alertOkAction)
            
            present(alertController, animated: true)
            return false
        }
        return true
    }
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alertForgot = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertOkAction = UIAlertAction(title: "Ok", style: .default)
        alertForgot.addAction(alertOkAction)
        present(alertForgot, animated: true)
    }
    
    @IBAction func forgotNameButton(_ sender: UIButton) {showAlert(withTitle: "Oops!", andMessage: "Your name is User")
    }
   
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
        showAlert(withTitle: "Oops!", andMessage: "Your password is Password")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard segue.source is WelcomeViewController else {return}
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
}

