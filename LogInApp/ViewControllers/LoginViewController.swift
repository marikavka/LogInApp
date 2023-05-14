//
//  ViewController.swift
//  LogInApp
//
//  Created by Мария Купчинская on 09.05.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let userInfo = User.getUserInfo()
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.destination is WelcomeViewController else { return }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == userInfo.user, passwordTextField.text == userInfo.password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passwordTextField
            )
            return false
        }
        return true
    }
    
    
    @IBAction func forgotButton(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops 😱", message: "Your name is \(userInfo.user)")
        : showAlert(title: "Oops 😱", message: "Your password is \(userInfo.password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alertForgot = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertOkAction = UIAlertAction(title: "Ok", style: .default) {_ in
            textField?.text = ""
        }
        alertForgot.addAction(alertOkAction)
        present(alertForgot, animated: true)
    }
}

