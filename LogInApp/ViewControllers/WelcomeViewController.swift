//
//  WelcomeViewController.swift
//  LogInApp
//
//  Created by Мария Купчинская on 09.05.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var userSurnameLabel: UILabel!
    @IBOutlet var userAgeLabel: UILabel!
    @IBOutlet var userCityLabel: UILabel!
    @IBOutlet var userZodiacSignLabel: UILabel!
    
    private let userInfo = User.getUserInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.blue.cgColor,
            UIColor.white.cgColor
        ]
        view.layer.insertSublayer(gradientLayer, at: 0)
        
        welcomeLabel.text = "Welcome, \(userInfo.person.name)!"
        
        
        userNameLabel.text = userInfo.person.name
        userSurnameLabel.text = userInfo.person.surname
        userAgeLabel.text = String(userInfo.person.age)
        userCityLabel.text = userInfo.person.city
        userZodiacSignLabel.text = userInfo.person.zodiacSign
    }
}
