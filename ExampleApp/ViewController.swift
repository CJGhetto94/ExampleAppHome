//
//  ViewController.swift
//  ExampleApp
//
//  Created by mac on 27.01.2025.
//

import UIKit

class ViewController: UIViewController {
    
    private let helper = Helper()
    private let textLabel = UILabel()
    private let imageView =  UIImageView()
    private let imageContainerView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(ciColor: .green)
        updateNumbers()
        
        setupLabel()
        imageShadowSetup()
        setupImageView()
        view.addSubview(textLabel)
        view.addSubview(imageContainerView)
        setupView()
        setupLayout()
        
        
    }
    private func updateNumbers() {
        helper.addNumber(Int.random(in: 1...10))
        
        for number in helper.getNumbers() {
            print(number)
        }
    }
    private func setupLabel() {
        let firstNumber = helper.getNumbers().first
        textLabel.text = firstNumber?.formatted()
        textLabel.font = .systemFont(ofSize: 30, weight: .bold)
        textLabel.textColor = .black
        textLabel.frame = CGRect(x: 100, y: 120, width: 200, height: 50)
    }
    
    private func setupView() {
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [UIColor.darkGray.cgColor, UIColor.yellow.cgColor]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        
        view.layer.insertSublayer(gradient, at: 0)
    }
    
    private func setupImageView() {
        imageView.image = UIImage(named: "forrestEX13")
        imageView.frame = imageContainerView.bounds
        imageView.layer.cornerRadius = 20
        imageView.clipsToBounds = true
        imageContainerView.addSubview(imageView)
    }
    
    private func imageShadowSetup() {
        imageContainerView.frame = CGRect(x: 100, y: 310, width: 200, height: 180)
        imageContainerView.layer.shadowColor = UIColor.white.cgColor
        imageContainerView.layer.shadowOffset = CGSize(width: 15, height: 15)
        imageContainerView.layer.shadowOpacity = 0.8
        imageContainerView.layer.shadowRadius = 10
    }
    
    private func setupLayout() {
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate(
            [textLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
             textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
    }
}
