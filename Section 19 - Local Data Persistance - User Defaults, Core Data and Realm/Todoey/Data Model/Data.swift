//
//  Data 2.swift
//  Todoey
//
//  Created by Carlos Alonso Camiña on 23/4/25.
//  Copyright © 2025 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift

class Data: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var age: Int = 0
}
