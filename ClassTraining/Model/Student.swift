//
//  Student.swift
//  ClassTraining
//
//  Created by User on 04/08/20.
//  Copyright © 2020 User. All rights reserved.
//

import Foundation
class Student {
    var name: String
    var id: String
    
    init(name: String, id: String) {
        self.name = name
        self.id = id
    }
    
    func sayHello() {
        print("hello")
    }
    
    func printNameAndId() {
        print(getNameAndid())
    }
    
    private func getNameAndid() -> String {
        return name + " " + id
    }
    
    private func sayBye() {
        print("bye")
    }
}
