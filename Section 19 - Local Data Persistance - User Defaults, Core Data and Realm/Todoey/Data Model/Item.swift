//
//  Item.swift
//  Todoey
//
//  Created by Carlos Alonso Camiña on 17/4/25.
//  Copyright © 2025 App Brewery. All rights reserved.
//

import Foundation

class Item: Encodable {
    var title: String = ""
    var done: Bool = false
}
