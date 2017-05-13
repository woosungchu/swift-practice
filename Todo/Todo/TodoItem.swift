//
//  TodoItem.swift
//  Todo
//
//  Created by woosungchu on 14/05/2017.
//  Copyright © 2017 woosungchu. All rights reserved.
//

import UIKit

class TodoItem: NSObject {
    let itemName: String
    var completed: Bool
    
    init(itemName: String, completed: Bool = false){
        self.itemName = itemName
        self.completed = completed
    }
}
