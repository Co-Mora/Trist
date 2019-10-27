//
//  Shop.swift
//  Tunai
//
//  Created by admin on 27/10/2019.
//  Copyright © 2019 admin. All rights reserved.
//

import Foundation

import SwiftUI

struct Shop: Identifiable {
    let id = UUID()
    let image: String
    let name: String
}


extension Shop {
    
    static func all() -> [Shop] {
        return [
            Shop(image: "tunai", name: "Tunai Salon"),
            Shop(image: "tunai", name: "Tunai Salon"),
            Shop(image: "tunai", name: "Tunai Salon"),
            Shop(image: "tunai", name: "Tunai Salon")

        ]
    }
}
