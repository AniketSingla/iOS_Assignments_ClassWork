//
//  Furniture.swift
//  HomeFurniture
//
//  Created by Aniket Singla
//  Copyright © 2025 Aniket Singla. All rights reserved.
//

import Foundation

class Furniture {
    let name: String
    let description: String
    var imageData: Data?
    
    init(name: String, description: String, imageData: Data? = nil) {
        self.name = name
        self.description = description
        self.imageData = imageData
    }
}
