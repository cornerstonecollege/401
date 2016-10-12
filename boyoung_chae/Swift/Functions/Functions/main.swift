//
//  main.swift
//  Functions
//
//  Created by Boyoung on 2016-09-26.
//  Copyright © 2016 Boyoung. All rights reserved.
//

import Foundation

// === Example 1 ===
// === Functions with no parms

var myString = "New String"

func sayHelloWorld() // Define the function Hello World. It returns void.
{
    print("Hello World");
}

sayHelloWorld() // Call the function Hello World


// === Example 2 ===
//

func getStringHelloWorld() -> String // Define a function that will return a String
{
    return "Returned String Hello World"
}

let myConstantString = getStringHelloWorld()
print(myConstantString)


// === Example 3 ===
// 

func addTwoNumbers(a: Int, b: Int) -> Int
{
    return a + b
}

let summation:Int = addTwoNumbers(a: 2, b: 3) // a and b are external params.
print("The summation is \(summation).")


// === Example 4 ===
//

func subTwoNumbers(extA intA:Int, extB intB:Int) -> Int // for encapsulation!
{
    return intA - intB  // internal params
}

let subtraction = subTwoNumbers(extA: 5, extB: 2) // external params
print("The subtraction is \(subtraction).")


// === Example 5 ===
// => Function with two params (the external names are ommited by '_ underscore').
// => It returns an Int.

/*
for _ in 1...10
{
    
}
 */

func mulTwoNumbers(_ a:Int, _ b:Int) -> Int
{
    return a * b
}

let multiplication = mulTwoNumbers(3, 5)    // The function ommits exteranl params.
print("The multiplication is \(multiplication).")


// === Example 6 : default values ===

/*
print("aaabbbcccdddeee") // It already has \n.
print("aaabbbcccdddeee", separator: "", terminator: "")
 */

func divTwoNumbers(a:Int = 1, b:Int = 1) -> Int // defalut values are 1.
{
    return a / b
}

let division1 = divTwoNumbers()
let division2 = divTwoNumbers(a: 4)
let division3 = divTwoNumbers(b: 5)
let division4 = divTwoNumbers(a: 6, b: 2)

print("Div1 is \(division1).")
print("Div2 is \(division2).")
print("Div3 is \(division3).")
print("Div4 is \(division4).")


// === Example 7 : inout ===
// => inout : Functions that might change the varible value.
// => It does not return anything.

func swap(_ x:inout Int, _ y:inout Int)
{
    let TempY = y
    y = x
    x = TempY
}

var myNumberFive = 5
var myNumberThree = 3
print("myNumberFive is \(myNumberFive) and myNumberThree is \(myNumberThree).")

swap(&myNumberFive, &myNumberThree)
print("myNumberFive is \(myNumberFive) and myNumberThree is \(myNumberThree).")


// === Example 8 : variadic ===
// => Passing multiple parameters

func printNStrings(strings: String...)
{
    for (i, str) in strings.enumerated()
    {
        print("My string \(i+1) is \(str).")
    }
}

printNStrings(strings: "aaa", "bbb", "ccc", "ddd", "eee")
printNStrings(strings: "")


// === Example 9 : nested functions ===
// Functions inside functions

func saySomething(what:Int = 0)
{
    func something1()
    {
        print("Something 1")
    }
    
    func something2()
    {
        print("Something 2")
    }
    
    func something3()
    {
        print("Something 3")
    }
    
    if what == 0
    {
        something1()
    }
    
    else if what == 1
    {
        something2()
    }
    
    else
    {
        something3()
    }
}

saySomething()
saySomething(what: 0)
saySomething(what: 1)
saySomething(what: -1)


// === Example 10 : return multiple params - Tuples ===

//func getNameAndAge() -> (name: String, age: Int)
//{
//    return ("Luiz", 26)
//}

func didStudentPass(name:String, grade:Double) -> (name: String, passed:Bool)
{
    if grade >= 7.0
    {
        return (name, true)
    }
    
    else
    {
        return(name, false)
    }
}

let student1 = didStudentPass(name: "Luiz", grade: 6.0)
let student2 = didStudentPass(name: "Any name", grade: 10.0)

// You can use tuples as heterogeneous params.
print("The student \(student1.name) passed:\(student1.passed)")
print("The student \(student2.name) passed:\(student2.passed)")
print("\(student1)")
print(student1)



// Function as params

func doSayHelloWorldAndAnotherThing(anotherThing: () -> Void)
{
    print("Hello World")
    anotherThing();
}

func myAnotherThingFunction()
{
    print("Another nice little thing")
}

doSayHelloWorldAndAnotherThing(anotherThing: myAnotherThingFunction)



