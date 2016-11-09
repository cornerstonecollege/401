//
//  main.swift
//  Extensions
//
//  Created by Luiz on 2016-09-30.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

import Foundation

extension Int {
    var square:Int { // computed property
        return self * self
    }
    
    func power(n: Int) -> Int { // function
        return Int(pow(Double(self), Double(n)))
    }
}

var x:Int = 2
print("\(x) square is \(x.square)")


print("2 to the power of 8 is \(2.power(n: 8))")

protocol MonsterProtocol
{
    func attack()
}


extension String : MonsterProtocol // we can extend classes
{                                  // by implementing new protocols
    func attack()
    {
        print("The string \(self) has just attacked")
    }
}

"Blah".attack()

let s:String = "My very cute string"
s.attack()

