//
//  ViewController.swift
//  ExampleAppHome
//
//  Created by mac on 28.01.2025.
//

import UIKit


class ViewController: UIViewController {
    private let helper = Helper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addPeopleHelper()
    }
    
    private func addPeopleHelper() {
        helper.addHuman(User(loginUser: "CJGhetto", passwordUser: 1234, personalInformationOfUser: Person(myFirstName: "Artem", mySecondName: "Rudnev")))
        helper.addHuman(User(loginUser: "Raucher", passwordUser: 5678, personalInformationOfUser: Person(myFirstName: "Kirill", mySecondName: "Lemikin")))
        helper.addHuman(User(loginUser: "Nestor", passwordUser: 9876, personalInformationOfUser: Person(myFirstName: "Gleb", mySecondName: "Gaiger")))
        
        for human in helper.getListOfHumans() {
            print(human.personalInformationOfUser.firstNameSecondName)
        }
    }
}

