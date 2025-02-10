//
//  Helper.swift
//  ExampleAppHome
//
//  Created by mac on 04.02.2025.
//

class Helper {
    private var listOfHumans = [Person]()
    
    func addHuman(_ human: Person) {
        listOfHumans.append(human)
    }
    
    func getListOfHumans() -> [Person] {
        listOfHumans
    }
}
