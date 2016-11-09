//
//  main.swift
//  Properties
//
//  Created by Luiz on 2016-09-29.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

import Foundation

class Reptile
{
    //var eyeColor = "Black" // first way of initializing a property
    // var currentTemperature = 0.0
    var eyeColor:String
    var currentTemperature:Double
    
    convenience init() // it is convinient to call another constructor
    {
        self.init(eyeColor:"", currentTemperature:0.0)
    }
    
    convenience init(eyeColor:String)
    {
        self.init(eyeColor: eyeColor, currentTemperature: 0.0)
    }
    
    init(eyeColor:String, currentTemperature:Double) // constructor of the class
    {
        self.eyeColor = eyeColor
        self.currentTemperature = currentTemperature
    }
    
    func jump()
    {
        print("The reptile jumped")
    }
}


class Snake : Reptile
{
    override func jump()
    {
        print("The snakes jumps differently")
    }
}

var mySnake = Snake(eyeColor: "Black", currentTemperature: 10.0)
mySnake.jump()
(mySnake as Reptile).jump() // same thing as a Snake is a Reptile


enum Card {
    case Ace, Queen, King, Jacks
    
//    init()
//    {
//        self = .Ace
//    }
    
    init?(cardLetter:String) // an optional initializer
    {
        switch cardLetter {
        case "A": self = .Ace // self is equal to Ace because enum is a value type
        case "Q": self = .Queen
        case "K": self = .King
        case "J": self = .Jacks
        default:
            return nil
        }
    }
}

var myCard = Card(cardLetter: "Z")
print(myCard) // myCard is going to be set to nil
if let myCardUnwrapped = Card(cardLetter: "A") {
    print(myCardUnwrapped)
}

struct Point
{
    var x:Int = 0
    var y:Int
}

var p = Point(x: 10, y: 500)
