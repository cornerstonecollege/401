//
//  main.swift
//  Closures
//
//  Created by Luiz on 2016-09-27.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

import Foundation

// create an alias to a new type called MyClosureType
typealias MyClosureType = () -> Void

// Example 1
// AutoClosures

var x = 1

var myAutoClosure = { // define an autoclosure (it cannot take params)
  x += 1
}

myAutoClosure = { // redefine the autoclosure because it is var
 x += 2
}

print(x)
myAutoClosure()
print(x) // x will be equal to 3 here

// Example 2
// Closures as last params
func sayHelloWorldAndAnotherThing(x:Int, anotherThing: MyClosureType)
{
    print("Hello World \(x)")
    anotherThing()
}

sayHelloWorldAndAnotherThing(x: 1) {
    print("Hello World 2")
}

sayHelloWorldAndAnotherThing(x: 3, anotherThing: {
    print("As a real param")
})

func anyFunction()
{
    print("This function as a name")
}

sayHelloWorldAndAnotherThing(x: 5, anotherThing: anyFunction) // any function is a function

// Example 3
// Passing function as params
var fruits = ["Apple", "Orange", "Watermelon", "Tomato", "Banana"]
fruits += ["Lemon"]
print(fruits)
func mySortFunction(leftString: String, rightString:String) -> Bool
{
    return leftString > rightString
}
fruits.sort(by: mySortFunction) // first way is good for practice
print(fruits)


fruits.sort (by:{ (str1:String, str2: String) -> Bool in // good for practice
    return str1 < str2
})

fruits.sort() {(str1:String, str2: String) -> Bool in // not good for practice
    return false;
}

fruits.sort{(str1:String, str2: String) -> Bool in // not good for practice
    return true;
}

fruits.sort(by:{$0 > $1}) // good practice

fruits.sort(by: <) // good practice

