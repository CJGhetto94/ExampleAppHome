//
//  Person.swift
//  ExampleAppHome
//
//  Created by mac on 03.02.2025.
//


struct Person {
    var myFirstName: String
    var mySecondName: String
    var firstNameSecondName: String {
        "\(myFirstName)  \(mySecondName)"
    }
    
    init(myFirstName: String, mySecondName: String) {
        self.myFirstName = myFirstName
        self.mySecondName = mySecondName
    }
}

struct User {
    var loginUser: String
    var passwordUser: Int
    var personalInformationOfUser: Person
    
    init(loginUser: String, passwordUser: Int, personalInformationOfUser: Person) {
        self.loginUser = loginUser
        self.passwordUser = passwordUser
        self.personalInformationOfUser = personalInformationOfUser
    }
}
