//
//  Constants.swift
//  To-Do App
//
//  Created by Muhammad Mishlahul Umam on 17/01/18.
//  Copyright © 2018 Muhammad Mishlahul Umam. All rights reserved.
//

import Foundation

var todoList:[String]?

func saveData(todoList:[String]){
    UserDefaults.standard.set(todoList, forKey: "todoList")
}

func fetchData() -> [String]? {
    if let todo = UserDefaults.standard.array(forKey: "todoList") as? [String]{
        return todo
    }
    else{
        return nil
    }
}
