//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Carlos Alonso Camiña on 28/4/25.
//  Copyright © 2025 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    var number: Double
    
    init(number: Double) {
        self.number = number
    }
    
    func calculate (symbol: String) -> Double? {
        
        if symbol == "+/-" {
            return number * -1
        }
        else if symbol == "AC" {
            return 0
        }
        else if symbol == "%" {
            return number / 100
        }
        return nil //In case any of calculator keys where clicked
    }
}
