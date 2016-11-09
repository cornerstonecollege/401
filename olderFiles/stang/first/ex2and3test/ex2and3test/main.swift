//
//  main.swift
//  ex2and3test
//
//  Created by SG on 2016-09-30.
//  Copyright © 2016 SG. All rights reserved.
//

import Foundation
import Darwin


/*let dict = [
    "roles" : [["id": "1", "role": "Director"],["id":"2", "role":"Cordinator"],["id": "3","role":"Teacher"],["id":"4","role":"Secretary"] ]
]*/

var roles: [String: String] = [

"id 1": "Director",
"id 2": "Cordinator",
"id 3": "Teacher",
"id 4": "Secretary"
]

var locations: [String: String] = [
"id 1":"location: Vancouver",
"id 2": "location: Richmond"
]


print("Type: 'R' to check roles, 'L' to check locations or 'Q' to quit")
var name = readLine()!


if name == "R"{
    for (key, value) in roles{
        
        print("\(key): \(value)")
        
    }
}else if name == "L"{
    for (key, value) in locations{
        
        print("\(key): \(value)")
    }
}else if name == "Q"{
    exit(0)
}else{
    print("You typed wrong command")
    }
