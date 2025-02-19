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
    
    func addFewHumans() {
     // !!!!!!!!!!!!!!!!!!!!!
    }
}

class UserRepository: Helper {
    func returnArrayOfUsers() {
        addHuman(User(loginUser: "CJGhetto",
                                passwordUser: 1234,
                                personalInformationOfUser: Person(firstName: "Artem", secondName: "Rudnev")))
        addHuman(User(loginUser: "Raucher",
                                passwordUser: 5678,
                                personalInformationOfUser: Person(firstName: "Kirill", secondName: "Lemikin")))
        addHuman(User(loginUser: "Nestor",
                                passwordUser: 9876,
                                personalInformationOfUser: Person(firstName: "Gleb", secondName: "Gaiger")))
        addHuman(User(loginUser: "bigboi_slime",
                                passwordUser: 1432,
                                personalInformationOfUser: Person(firstName: "Vladislav", secondName: "Zamyatin")))
        
        for human in getListOfHumans() {
            print(human.personalInformationOfUser.firstNameSecondName)
        }
    }
}
