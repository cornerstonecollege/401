//
//  main.swift
//  StructsVsClasses
//
//  Created by Luiz on 2016-09-28.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

import Foundation

// Structs Versus Classes

/* Structs are passed by value and classes are passed by reference
 * That means, that when you pass the struct to another variable
 * we will copy it and when we pass a class we will copy its address.
 */

// Structs examples

//struct basePoint {}

struct Point // : basePoint inheritance is not allowed in here
{
    var x:Int
    var y:Int
}

var p = Point(x: 5, y: 10) // create a new struct
var p2 = p // copy the struct
p2.x = 18 // change new struct x
p2.y = 100 // change new struct y

print("Pont 1: \(p.x) \(p.y)",
      "Pont 2: \(p2.x) \(p2.y)",
      separator: " ",
      terminator: "\n")

struct Size {
    var width:Int
    var height:Int
}

struct Rect {
    var origin:Point // aggregation
    var size:Size
}

var point = Point(x: 100, y: 100)
var size = Size(width: 50, height: 50)
var rect = Rect(origin: point, size: size)

print("Rect:",
      "Point: \(rect.origin.x) \(rect.origin.y)",
      "Size:  \(rect.size.width) \(rect.size.height)")

// Class examples

class Animal // classes have ARC. structs don't
{
    var color:String = ""
    var nLegs:Int = 0
}

var animal = Animal()
animal.nLegs = 4
animal.color = "Red"

var animal2 = animal
animal2.nLegs = 2
animal2.color = "Blue"

print("Animal 1: \(animal.color) \(animal.nLegs)",
    "Animal 2: \(animal2.color) \(animal2.nLegs)",
    separator: " ",
    terminator: "\n")

class Human : Animal
{
    var hairColor:String = ""
    
    func sayHi(optionalThing: String? = nil) { // object method
        if let thing = optionalThing  {
            print("Hi \(thing)")
        } else {
            print("Hi")
        }
    }
    
    static func details() { // class method
        print("A human has haircolor, skin color and 2 legs (usually)")
    }
}

var humanObj = Human()
humanObj.hairColor = "Black"
humanObj.nLegs = 2

print("Human: haircolor: \(humanObj.hairColor) nLegs: \(humanObj.nLegs) color: \(humanObj.color)")

humanObj.sayHi()
humanObj.sayHi(optionalThing: "Luiz")

Human.details()
