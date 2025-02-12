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
        helper.addHuman(User(loginUser: "CJGhetto",
                             passwordUser: 1234,
                             personalInformationOfUser: Person(firstName: "Artem", secondName: "Rudnev")))
        helper.addHuman(User(loginUser: "Raucher",
                             passwordUser: 5678,
                             personalInformationOfUser: Person(firstName: "Kirill", secondName: "Lemikin")))
        helper.addHuman(User(loginUser: "Nestor",
                             passwordUser: 9876,
                             personalInformationOfUser: Person(firstName: "Gleb", secondName: "Gaiger")))
        helper.addHuman(User(loginUser: "bigboi_slime",
                             passwordUser: 1432,
                             personalInformationOfUser: Person(firstName: "Vladislav", secondName: "Zamyatin")))
        
        for human in helper.getListOfHumans() {
            print(human.personalInformationOfUser.firstNameSecondName)
        }
    }
}

