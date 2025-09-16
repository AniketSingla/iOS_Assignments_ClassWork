//
//  ToDo.swift
//  List
//
//  Created by Aniket Singla on 01/09/25.
//

import Foundation
import UIKit
struct ToDo {
    let id = UUID()
    var title: String
    var isComplete: Bool
    var dueDate: Date
    var notes: String?
    
    static func ==(lhs: ToDo, rhs: ToDo) -> Bool{
        return lhs.id == rhs.id
    }
    static func loadToDos() -> [ToDo]? {
        return nil
    }
    
    static func loadSampleToDos() -> [ToDo] {
        let toDo1 = ToDo(title: "To-Do One", isComplete: false, dueDate: Date(), notes: "Notes 1")
        let toDo2 = ToDo(title: "To-Do Two", isComplete: false, dueDate: Date(), notes: "Notes 2")
        let toDo3 = ToDo(title: "To-Do three", isComplete: false, dueDate: Date(), notes: "Notes 3")
        return [toDo1, toDo2, toDo3]
    }
}
