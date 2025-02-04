//
//  Helper.swift
//  ExampleAppHome
//
//  Created by mac on 04.02.2025.
//
import Foundation

class Helper {
    private var listOfPeople = [Person]()
    
    func addPeople(_ people: Person) {
        listOfPeople.append(people)
    }
    
   /* func printListOfPeople() {
        for people in listOfPeople {
            print(people)
        }
    }*/
    
    func getListOfPeople() -> [Person] {
        listOfPeople
    }
}

