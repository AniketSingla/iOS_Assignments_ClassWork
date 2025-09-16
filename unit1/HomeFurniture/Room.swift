//
//  Room.swift
//  HomeFurniture
//
//  Created by Aniket Singla
//  Copyright © 2025 Aniket Singla. All rights reserved.
//

import Foundation

class Room {
    let name: String
    let furniture: [Furniture]
    
    init(name: String, furniture: [Furniture]) {
        self.name = name
        self.furniture = furniture
    }
}
