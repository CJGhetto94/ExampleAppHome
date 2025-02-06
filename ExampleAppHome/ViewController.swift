//
//  ViewController.swift
//  ExampleAppHome
//
//  Created by mac on 28.01.2025.
//

import UIKit


class ViewController: UIViewController {
    private let helper = Helper()
    let myPerson = Person(myFirstName: "Artem", mySecondName: "Rudnev")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addPeopleHelper()
    }
    private func addPeopleHelper() {
        helper.addPeople(Person(myFirstName: "Kirill", mySecondName: "Lemikin"))
        helper.addPeople(Person(myFirstName: "Ilya", mySecondName: "Uvarov"))
        
        for people in helper.getListOfPeople() {
            print(people)
        }
    }
}

