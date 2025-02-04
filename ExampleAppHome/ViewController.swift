//
//  ViewController.swift
//  ExampleAppHome
//
//  Created by mac on 28.01.2025.
//

import UIKit


class ViewController: UIViewController {
    let helper = Helper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Меня зовут \(myPerson.myFirstName), Я создал свое первое приложение")
        print("Мое полное имя: \(myPerson.firstNameSecondName)")
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

let myPerson = Person(myFirstName: "Artem", mySecondName: "Rudnev")
