//
//  TravelViewController.swift
//  LogInApp
//
//  Created by Мария Купчинская on 14.05.2023.
//

import UIKit

final class TravelViewController: UIViewController {

    @IBOutlet var visitedCountriesLabel: UILabel!
    @IBOutlet var listIfCountries: UILabel!
    
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
        
        visitedCountriesLabel.text = "\(userInfo.person.name) visited \(userInfo.travel.visitedCountries.count) countries:"
        
        let joined = userInfo.travel.visitedCountries.joined(separator: ", ")
        
        listIfCountries.text = joined
    }
    
    
}


