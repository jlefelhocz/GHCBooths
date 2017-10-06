//
//  booth.swift
//  GHCBooths
//
//  Created by Julianne Lefelhocz on 10/6/17.
//  Copyright © 2017 Julianne Lefelhocz. All rights reserved.
//

import Foundation

class Booth {
    var name = ""
    var type = ""
    var description = ""
    var number = -1
    
    
    init(name: String, type: String, description: String, number: Int) {
        self.name = name
        self.type = type
        self.description = description
        self.number = number
    }
}
