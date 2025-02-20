//
//  Helper.swift
//  ExampleAppHome
//
//  Created by mac on 04.02.2025.
//

class Helper {
    private var listOfHumans = [User]()
    
    func addHuman(_ human: User) {
        listOfHumans.append(human)
    }
    
    func getListOfHumans() -> [User] {
        listOfHumans
    }
    
    func addFewHumans(user: [User]) {
        listOfHumans.append(contentsOf: user)
    }
}

class UserRepository {
    func returnArrayOfUsers() -> [User] {
        [
        (User(loginUser: "CJGhetto",
                                passwordUser: 1234,
              personalInformationOfUser: Person(firstName: "Artem", secondName: "Rudnev"))),
        (User(loginUser: "Raucher",
                                passwordUser: 5678,
              personalInformationOfUser: Person(firstName: "Kirill", secondName: "Lemikin"))),
        (User(loginUser: "Nestor",
                                passwordUser: 9876,
              personalInformationOfUser: Person(firstName: "Gleb", secondName: "Gaiger"))),
        (User(loginUser: "bigboi_slime",
                                passwordUser: 1432,
                                personalInformationOfUser: Person(firstName: "Vladislav", secondName: "Zamyatin")))
        ]
        
        }
    }
