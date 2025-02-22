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

