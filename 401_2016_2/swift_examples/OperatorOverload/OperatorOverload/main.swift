//
//  main.swift
//  OperatorOverload
//
//  Created by Luiz on 2016-09-30.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

import Foundation

// readLine example

//print("Type my nice information:")
//
//if let information = readLine() {
//    print("My info is: \(information)")
//}

//print("Type my nice information:")
//var str = readLine()
//if str != nil {
//    print("My info is: \(str!)")
//}

let x = 2 + 3 // infix operator
print(x)

let isOn = !true // prefix operator

let j = Int("2")! // postfix operator

let y = true ? 1 : 2


var arr = ["Luiz", "Bo Young", "Maxim", "Chris"]
arr = arr + ["Jorge", "Younseoh"]
//arr.append("Jorge")
//arr.append("Younseoh")


struct Point : CustomStringConvertible {
    var x = 0
    var y = 0
    
    static func +(p1: Point, p2:Point) -> Point {
        var point = Point()
        point.x = p1.x + p2.x
        point.y = p1.y + p2.y
        return point
    }
    
    var description: String {
        return "x: \(self.x) y:\(self.y)"
    }
}

var p = Point(x: 2, y: 5)
var p2 = Point(x: 7, y: 10)

var p3 = p + p2
print(p3)

func +(left:Int, right:Int) -> Int
{
    return left - right // be careful when you overload an operator
}

var myNumber = 5 + 3
print("My number is 5 + 3 = \(myNumber)")


//class JClass : NSObject  { // inderectly implementing it
//    override var description: String {
//        return ""
//    }
//}
//
//let j2 = JClass()
//print(j2)

prefix operator √// { associativity left precedence 150 }
prefix func √(number:Double) -> Double {
    return sqrt(number)
}

var squareRootOf2 = √2
print("The square root of 2 is: \(squareRootOf2)")

postfix operator ❗
postfix func ❗(number:Int) -> Int {
    var factorial  = 1
    for n in 1...number {
        factorial *= n
    }
    return factorial
}

let threeFactorial = 3❗
print("3 factorial is \(threeFactorial)")

var 🐶 = 1
print(🐶)


infix operator ∞: MultiplicationPrecedence
func ∞(l:Int, r:Int) -> Int {
    return Int.max
}

infix operator -∞: MultiplicationPrecedence
func -∞(l:Int, r:Int) -> Int {
    return Int.min
}

var positiveInfinite = 2 ∞ (4 * 3)
var negativeInfinite = 2 -∞ (5 * 2)

print("Positive infinite: \(positiveInfinite)")
print("Negative infinite: \(negativeInfinite)")


