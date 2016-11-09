//
//  main.swift
//  Extensions
//
//  Created by Boyoung on 2016-09-30.
//  Copyright © 2016 Boyoung. All rights reserved.
//

import Foundation

extension Int
{
    var square: Int // computed property
    {
        return self * self
    }
    
    func power(n: Int) -> Int   // function
    {
        return Int(pow(Double(self), Double(n)))
    }
}

var x:Int = 2
print("\(x) square is \(x.square).")

print("2 to the power of 5 is \(2.power(n: 8)).")

// 2 is an object in Swift. So we can use functions.


protocol MonsterProtocol
{
    func attack()
}

// we can extend classes by implementing new protocols.
extension String : MonsterProtocol
{
    func attack()
    {
        print("The string \(self) has just attaced.")
    }
}

"Blah".attack()

let s:String = "My very cute string"
s.attack()



