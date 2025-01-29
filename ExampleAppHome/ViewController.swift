//
//  ViewController.swift
//  ExampleAppHome
//
//  Created by mac on 28.01.2025.
//

import UIKit

class ViewController: UIViewController {
    let myFirstName = "Artem"
    let mySecondName = "Rudnev"
    var firstNameSecondName: String {
        "\(myFirstName)  \(mySecondName)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Меня зовут \(myFirstName), Я создал свое первое приложение")
        print("Мое полное имя: \(firstNameSecondName)")
    }
}

/*
 В ДЗ не написано про удаление print("Меня зовут....
 поэтому оставил
 */
