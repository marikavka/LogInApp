//
//  WelcomeViewController.swift
//  LogInApp
//
//  Created by Мария Купчинская on 09.05.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var userNme: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let a = UIColor.green
        let b = UIColor.blue
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [a, b]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        
        welcomeLabel.text = "Welcome, \(userNme ?? "")"
    }
}
