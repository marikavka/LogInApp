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
            let alertOkAction = UIAlertAction(title: "Ok", style: .default)
            
            alertController.addAction(alertOkAction)
            
            present(alertController, animated: true)
            return false
        }
        return true
    }
    
    @IBAction func showACPressed(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Oops!", message: "Your name is User", preferredStyle: .alert)
        
        let alertOkAction = UIAlertAction(title: "Ok", style: .default)
        
        alertController.addAction(alertOkAction)
        
        present(alertController, animated: true)
    }
    

}

