//
//  main.swift
//  ComputerKeyboardAndMouse
//
//  Created by Boyoung on 2016-09-29.
//  Copyright © 2016 Boyoung. All rights reserved.
//

import Foundation

protocol PeripheralsProtocol
{
    func signal()
}

class Computer
{
    weak var keyboard: Keyboard?
    weak var mouse: Mouse?

//    convenience init()
//    {
//        self.init(keyboard: nil, mouse: nil)
//    }
    
    init(keyboard: Keyboard? = nil, mouse: Mouse? = nil)
    {
        self.keyboard = keyboard
        self.mouse = mouse
    }
    
    func performClick()
    {
        print("The mouse was just clicked!")
    }
    
    func performType()
    {
        print("The keyboard was just clicked!")
    }
}

class Keyboard : PeripheralsProtocol
{
    unowned var computer: Computer
    
    init(computer: Computer)
    {
        self.computer = computer
    }
    
    func signal()
    {
        print("\nThe signal of typing a keyboard was sent!")
        self.computer.performType()
    }
}

class Mouse : PeripheralsProtocol
{
    unowned var computer: Computer
    
    init(computer: Computer)
    {
        self.computer = computer
    }
    
    func signal()
    {
        print("\nThe signal of clicking a mouse was sent!")
        self.computer.performClick()
    }
}

var myComputer = Computer()

var myKeyboard = Keyboard(computer: myComputer)
var myMouse = Mouse(computer: myComputer)

myComputer.performClick()
myComputer.performType()

myKeyboard.signal()
myMouse.signal()


