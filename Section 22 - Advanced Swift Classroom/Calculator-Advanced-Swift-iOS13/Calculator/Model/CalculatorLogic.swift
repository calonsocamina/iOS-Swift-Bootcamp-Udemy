//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Carlos Alonso Camiña on 28/4/25.
//  Copyright © 2025 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    private var number: Double?
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    func calculate (symbol: String) -> Double? {
        if let n = number {
            if symbol == "+/-" {
                return n * -1
            } else if symbol == "AC" {
                return 0
            } else if symbol == "%" {
                return n / 100
            } else if symbol == "+" {
                
            } else if symbol == "=" {
                
            }
        }
        return nil //In case any of calculator keys where clicked
    }
}
