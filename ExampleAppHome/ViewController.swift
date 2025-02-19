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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(ciColor: .magenta)
        view.alpha = CGFloat(0.9)
        userRepository.returnArrayOfUsers()
        helper.getListOfHumans()
    }
    
    }

