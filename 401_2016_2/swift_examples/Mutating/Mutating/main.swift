//
//  main.swift
//  Mutating
//
//  Created by Luiz on 2016-09-29.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

import Foundation

// Mutating is used for value structures such as enums and structs
// We use the keyword mutating when we want to change `self` inside a value structure

struct Point
{
    var x = 0
    var y = 0
    
//    func changePoints(x:Int, y:Int) // not valid because need mutating
//    {
//        self.x = x
//        self.y = y
//    }
    
    mutating func changePoints(x:Int, y:Int)
    {
        self.x = x
        self.y = y
    }
//    
//    mutating func createNewPoint(x:Int, y:Int) -> Point
//    {
//        return Point(x: 20+x, y: y+10)
//    }
}

//let point = Point(x: 20, y: 40) // heterogeneous array cannot be changed when they 
                                  //are ley
//point.x = 3

var point = Point(x: 20, y: 40)
point.x = 3




