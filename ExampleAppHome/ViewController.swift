//
//  ViewController.swift
//  ExampleAppHome
//
//  Created by mac on 28.01.2025.
//

import UIKit


class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Меня зовут \(myPerson.myFirstName), Я создал свое первое приложение")
        print("Мое полное имя: \(myPerson.firstNameSecondName)")
    }
    
}

var myPerson = Person()
