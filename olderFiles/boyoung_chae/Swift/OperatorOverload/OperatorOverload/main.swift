//
//  main.swift
//  OperatorOverload
//
//  Created by Boyoung on 2016-09-30.
//  Copyright © 2016 Boyoung. All rights reserved.
//

import Foundation

// readLine examples

print("Type my nice information.")

if let information = readLine()
{
    print("My info is: \(information)")
}

//print("Type my nice information.")
//var str = readLine()
//if str != nil
//{
//    print("My string is: \(str!)")
//}


// Operator Overload

// 1) Binary operators
let x = 2 + 3       // infix operator
print(x)

let isOn = !true    // prefix operator

let j = Int("2")!   // postfix operator

// 2) Ternary operators
let y = true ? 1 : 2


// 3) operators overload

var arr = ["Luiz", "BoYoung", "Maxim", "Chris"]
arr += ["Jorge", "YounSeo"] //arr = arr + ["Jorge", "YounSeo"]
//arr.append("Jorge")
//arr.append("YounSeo")


struct Point: CustomStringConvertible
{
    var x = 0
    var y = 0
    
    static func +(p1: Point, p2: Point) -> Point  // function inside struct => static
    {
        var point = Point()
        point.x = p1.x + p2.x
        point.y = p1.y + p2.y
        
        return point
    }
    
    var description: String
    {
        return "x: \(self.x) y: \(self.y)"
    }
}

// global
//func +(p1: Point, p2: Point) -> Point  // function inside struct => static
//{
//    var point = Point()
//    point.x = p1.x + p2.x
//    point.y = p1.y + p2.y
//    
//    return point
//}

var p = Point(x: 2, y: 5)
var p2 = Point(x: 7, y: 10)

var p3 = p + p2
print(p3)

func +(left: Int, right: Int) -> Int
{
    return left - right // be careful when you overload an operator.
}

var myNumber = 5 + 3
print("My number 5 + 3 is \(myNumber).")


class JClass : NSObject // inderectly implementing it
{
    override var description: String
    {
        return ""
    }
}

let j2 = JClass()
print(j2)


// New Operators

prefix operator ∫
//{
//    associativity left precedence 150
//}

prefix func ∫(number: Double) -> Double
{
    return sqrt(number)
}


var squareRootOf2 = ∫2
print("The square root of 2 is: \(squareRootOf2).")


postfix operator ❗  // it is used "unwrapped".
postfix func ❗(number: Int) -> Int
{
    var factorial = 1
    for n in 2...number
    {
        factorial *= n
    }
    
    return factorial
}

let threeFactorial = 3❗
print("3 factorial is \(threeFactorial).")


