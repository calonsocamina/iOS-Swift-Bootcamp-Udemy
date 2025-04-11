//
//  CoinModel.swift
//  ByteCoin
//
//  Created by Carlos Alonso Camiña on 11/4/25.
//  Copyright © 2025 The App Brewery. All rights reserved.
//

import Foundation

struct CoinModel {
    let rate: Double
    
    var rateString: String{
        return String(format: "%.2f", rate)
    }
}
