//
//  main.swift
//  Protocols
//
//  Created by Luiz on 2016-09-29.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

import Foundation

// Example 1

//@objc
protocol SuperHero
{
    func superPower() // prototypes of functions
    //@objc optional func optionalSuperPower() // it will need to bridge with objc
}

class Human : SuperHero // human implements superhero
{
    var health = 100 { // store property
        didSet {
            if !self.isAlive {
                print("Human died")
            }
        }
    }
    
    var isAlive:Bool { // computed property
        return health > 0
    }
    
    func superPower()
    {
        print("This is my great super power")
    }
}

// Example 2
protocol MonsterProtocol
{
    func attack(character: Human)
}

class SpaceShip : MonsterProtocol
{
    func attack(character: Human) {
        print("The spaceship attacked")
        character.health -= 40
    }
}

class Troll : MonsterProtocol
{
    func attack(character: Human) {
        print("The troll attacked")
        character.health -= 10
    }
}

let arrayMonster:[MonsterProtocol] = [SpaceShip(), Troll()]
let human = Human()

while human.isAlive {
    for monster in arrayMonster{
        monster.attack(character: human)
    }
}






