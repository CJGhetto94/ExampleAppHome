//
//  ViewController.swift
//  ExampleAppHome
//
//  Created by mac on 28.01.2025.
//

import UIKit


class ViewController: UIViewController {
    private let helper = Helper()
    private let userRepository = UserRepository()
    private let textLabel = UILabel()
    private let buttonUI: UIButton = {
        let button = UIButton()
        button.tintColor = .blue
        button.setTitle("Show FullName", for: UIControl.State())
        button.frame = CGRect(x: 100, y: 150, width: 150, height: 50)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(ciColor: .magenta)
        let users = userRepository.returnArrayOfUsers()
        helper.addFewHumans(user: users)
        view.addSubview(textLabel)
        setupLabel()
        
        for users in helper.getListOfHumans() {
            print(users.personalInformationOfUser.firstNameSecondName)
        }
    }
    
    private func setupLabel() {
        let randomUserName = helper.getListOfHumans()
        textLabel.text = randomUserName.randomElement()?.personalInformationOfUser.firstNameSecondName
        textLabel.font = .systemFont(ofSize: 25)
        textLabel.textColor = .blue
        textLabel.frame = CGRect(x: 100, y: 100, width: 150, height: 50)
    }
}


