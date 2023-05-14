//
//  EducationViewController.swift
//  LogInApp
//
//  Created by Мария Купчинская on 14.05.2023.
//

import UIKit

final class EducationViewController: UIViewController {
    
    @IBOutlet var educationLabel: UILabel!
    
    @IBOutlet var universityLabel: UILabel!
    @IBOutlet var specialityLabel: UILabel!
    @IBOutlet var issueLabel: UILabel!
    @IBOutlet var degreeLabel: UILabel!
    
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
        
        universityLabel.text = userInfo.education.university
        specialityLabel.text = userInfo.education.speciality
        issueLabel.text = String(userInfo.education.yearOfIssue)
        degreeLabel.text = userInfo.education.degree
    }
}

