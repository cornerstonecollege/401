//
//  main.swift
//  Mutating
//
//  Created by Boyoung on 2016-09-29.
//  Copyright © 2016 Boyoung. All rights reserved.
//

import Foundation

// Mutating is used for value structures such as enums and structs.
// We use the keyword mutating when we want to change 'self' inside a value structure.

struct Point
{
    var x = 0
    var y = 0
    
//    func changePoints(x: Int, y: Int)   // not valid because need mutating
//    {
//        self.x = x
//        self.y = y
//    }
    
    mutating func changePoints(x: Int, y: Int)
    {
        self.x = x
        self.y = y
    }
    
//    mutating func creatNewPoint(x: Int, y: Int) -> Point
//    {
//        return Point(x: 20+x, y: y+10)
//    }
}

// heterogeneous array connot be changed when they are let.
//let point = Point(x:20, y:20)
//point.x = 3   <= we cannot change let.

var point = Point(x: 20, y: 20)
point.x = 3




