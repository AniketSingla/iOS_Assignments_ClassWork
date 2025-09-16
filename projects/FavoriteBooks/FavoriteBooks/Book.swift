//
//  Book.swift
//  FavoriteBooks
//
//  Created by Aniket Singla on 25/08/25.
//

import Foundation

struct Book: Codable, Equatable{
    var title: String
    var author: String
    var genre: String
    var length: String
}
