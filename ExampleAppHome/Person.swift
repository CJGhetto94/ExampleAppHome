//
//  Person.swift
//  ExampleAppHome
//
//  Created by mac on 03.02.2025.
//


struct Person {
    var firstName: String
    var secondName: String
    var firstNameSecondName: String {
        "\(firstName)  \(secondName)"
    }
    
    init(firstName: String, secondName: String) {
        self.firstName = firstName
        self.secondName = secondName
    }
}

struct User {
    var loginUser: String
    var passwordUser: Int
    var personalInformationOfUser: Person
}
