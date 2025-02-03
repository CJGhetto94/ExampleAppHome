//
//  ViewController.swift
//  ExampleApp
//
//  Created by mac on 27.01.2025.
//

import UIKit

class ViewController: UIViewController {
    
    private let helper = Helper() //1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateNumbers()
    }
    private func updateNumbers() {
        helper.addNumber(Int.random(in: 1...10))
        
        for number in helper.getNumbers() {
            print(number)
        }
    }
}
