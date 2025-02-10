//
//  Person.swift
//  ExampleAppHome
//
//  Created by mac on 03.02.2025.
//


class Person {
    let myFirstName: String
    let mySecondName: String
    var firstNameSecondName: String {
        "\(myFirstName)  \(mySecondName)"
    }
    
    init(myFirstName: String, mySecondName: String) {
        self.myFirstName = myFirstName
        self.mySecondName = mySecondName
    }
}

