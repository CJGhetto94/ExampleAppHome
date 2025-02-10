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
        helper.addHuman(Person(myFirstName: "Kirill", mySecondName: "Lemikin"))
        helper.addHuman(Person(myFirstName: "Ilya", mySecondName: "Uvarov"))
        helper.addHuman(Person(myFirstName: "Gleb", mySecondName: "Gaiger"))
        
        for human in helper.getListOfHumans() {
            print(human.firstNameSecondName)
        }
    }
}

