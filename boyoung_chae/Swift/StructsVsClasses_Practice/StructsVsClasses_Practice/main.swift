//
//  main.swift
//  StructsVsClasses_Practice
//
//  Created by Boyoung on 2016-09-28.
//  Copyright © 2016 Boyoung. All rights reserved.
//

import Foundation

// ===== Ptotocol =====
protocol TurborchargerProtocol {
    func moveWithTurbo()
}

class Vehicle {
    
    var color:String = ""
    var model:String = ""
    var nWheels:Int = 0
    
    init(color iColor: String, model iModel: String, nWheels iWheels: Int) {
        
        color = iColor
        model = iModel
        nWheels = iWheels
    }
    
//    init() {
//        
//        color = "Black"
//        model = "Model-001"
//        nWheels = 4
//    }
    
    func changeColor(color2: String) {
        
        color = color2
    }
    
    func move() {
        print("Method has not been implemented.\n")
    }
    
    func moveWithBlock(passBlock: () -> Void)
    {
        print("Void Block is passed.")
        passBlock();
    }
}

func printBlock()
{
    print("This is BLOCK!\n")
}


class Car : Vehicle, TurborchargerProtocol {
    
    init(color iColor: String, model iModel: String) {
        
        super.init(color: "", model: "", nWheels: 0)
        
        color = iColor
        model = iModel
    }

//    init(color iColor: String, model iModel: String) {
//        
//        super.init()
//        
//        color = iColor
//        model = iModel
//    }
    
    override func move() {
        print("The car has moved!")
    }
    
    func moveWithTurbo() {
    
        print("[by Protocol] The can has moved with turbo.\n")
    }
}

class Motorcycle : Vehicle {
    
    init(color iColor: String, model iModel: String) {
        
        super.init(color: "", model: "", nWheels: 0)
    
        color = iColor
        model = iModel
    }

//    init(color iColor: String, model iModel: String) {
//        
//        super.init()
//        
//        color = iColor
//        model = iModel
//    }
    
    override func move() {
        print("The motorcycle has moved!\n")
    }
}


var vehicle = Vehicle(color: "Black", model: "Model-001", nWheels: 4)
//var vehicle = Vehicle()

print("[The vehicle]",
      "Model: \(vehicle.model)",
      "Color: \(vehicle.color)",
      "Wheels: \(vehicle.nWheels)",
      separator: "\n",
      terminator: "\n")
vehicle.move()

vehicle.changeColor(color2: "Silver")

print("[The vehicle : changing color]",
      "Model: \(vehicle.model)",
      "Color: \(vehicle.color)",
      "Wheels: \(vehicle.nWheels)",
      separator: "\n",
      terminator: "\n")
vehicle.move()


var car = Car(color: "Red", model: "Model-002")
car.nWheels = 4

print("[The Car]",
      "Model: \(car.model)",
      "Color: \(car.color)",
      "Wheels: \(car.nWheels)",
      separator: "\n",
      terminator: "\n")

car.move()
car.moveWithTurbo()

var motorcycle = Motorcycle(color: "Blue", model: "Model-003")
motorcycle.nWheels = 2

print("[The Motorcycle]",
      "Model: \(motorcycle.model)",
      "Color: \(motorcycle.color)",
      "Wheels: \(motorcycle.nWheels)",
      separator: "\n",
      terminator: "\n")

motorcycle.move()


// ===== function as params =====
print("[Block practice: function as parameter]")
vehicle.moveWithBlock(passBlock: printBlock)


