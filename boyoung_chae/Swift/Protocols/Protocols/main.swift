//
//  main.swift
//  Protocols
//
//  Created by Boyoung on 2016-09-29.
//  Copyright © 2016 Boyoung. All rights reserved.
//

import Foundation

//@objc
protocol SuperHero
{
    func superpower()   // prototypes of functions, required
//    @objc optional func optionalSuperPower()  // It will need to bridge with objc.
}

class Human : SuperHero // Human implements SuperHero.
{
    var health = 100
    {
        didSet  // stored property
        {
            if !self.isAlive
            {
                print("Human died.")
            }
        }
    }
    
    var isAlive: Bool   // computed property
    {
        return health > 0
    }
    
    func superpower()
    {
        print("This is my great super power.")
    }
}


// Example 2

protocol MonsterProtocol
{
    func attack(character: Human)
}

class SpaceShip : MonsterProtocol
{
    func attack(character: Human)
    {
        print("The spaceship attacked.")
        character.health -= 40
    }
}

class Troll : MonsterProtocol
{
    func attack(character: Human)
    {
        print("The troll attacked.")
        character.health -= 10
    }
}

let arrayMonster: [MonsterProtocol] = [SpaceShip(), Troll()]
let human = Human()

while human.isAlive
{
    for monster in arrayMonster
    {
        monster.attack(character: human)
    }
}





