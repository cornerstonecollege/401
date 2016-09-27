//
//  main.swift
//  Tuples
//
//  Created by Luiz on 2016-09-27.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

import Foundation

let point = (5.5, 10.1)

print(point.0)

let point2 = (x: 7.5, y: 12.1)
print("X: \(point2.x) Y:\(point2.y)")

let (point2X, point2Y) = point2
print("Hey, I broke \(point2X) and \(point2Y) down")

let (x, _) = point2

let arr = [26, 46, 56, 66]
for element in arr
{
    print("The element is \(element)")
}

for (index, element) in arr.enumerated()
{
    print("The element at \(index) is \(element)")
}

