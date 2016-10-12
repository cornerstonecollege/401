//
//  main.swift
//  Constructors
//
//  Created by Boyoung on 2016-09-29.
//  Copyright © 2016 Boyoung. All rights reserved.
//

import Foundation

class Reptile
{
//    var eyecolor = "Black"   // first way of initialinzing a property
//    var currentTemperature = 0.0
    
    var eyeColor: String
    var currentTemperature: Double

    
    // ===== Constrouctor for class =====
    
    // It os convenient to call another constructor
    convenience init()
    {
        self.init(eyeColor: "", currentTemperature: 0.0)
    }
    
    convenience init(eyeColor:String)
    {
        self.init(eyeColor: eyeColor, currentTemperature: 0.0)
    }
    
    // Constructor of the class
    init(eyeColor: String, currentTemperature: Double)
    {
        self.eyeColor = eyeColor
        self.currentTemperature = currentTemperature
    }
    
    func jump()
    {
        print("The reptile jumped.")
    }
}

class Snake: Reptile
{
    override func jump()
    {
        print("The snakes jump differently.")
    }
}

var snake = Snake(eyeColor: "Black", currentTemperature: 10.0)
snake.jump()
(snake as Reptile).jump()   // same thing as a Snake is a Reptile.


// ===== Constrouctor for enum =====
enum Card
{
    case Ace, Queen, King, Jacks

    init?(cardLetter: String)   // an optional constuctor
    {
        switch cardLetter
        {
            case "A": self = .Ace   // self is equal to Ace because enum is a value type.
            case "Q": self = .Queen
            case "K": self = .King
            case "J": self = .Jacks
            default:
                return nil
        }
    }
}

var myCard = Card(cardLetter: "Z")
print(myCard)   // myCard is going to be set to nil.
if let myCardUnwrapped = Card(cardLetter: "A")
{
    print(myCardUnwrapped)
}

struct Point    // Struct doesn't need constructor.
{
    var x:Int = 0
    var y:Int
}

var p = Point(x: 10, y: 10)
