//
//  main.swift
//  Functions
//
//  Created by Luiz on 2016-09-26.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

import Foundation

// Example 1
// Function with no params returning void

func sayHelloWorld() // define the function Hello World. It returns void
{
    print("Hello World");
}

sayHelloWorld() // call the function Hello World

// Example 2
// Function with no params returning String

func getStringHelloWorld() -> String // define a function that will return a String
{
    return "Returned String Hello World"
}

let myConstantString = getStringHelloWorld()
print(myConstantString)

// Example 3
// Function with two params (both Int) returning Int

func addTwoNumbers(a: Int, b: Int) -> Int
{
    return a + b
}

let summation:Int = addTwoNumbers(a: 2, b: 3) // a and b are external params
print("The summation is \(summation)")

// Example 4
// Function with two external and internal params (both Int) returning Int

func subTwoNumbers(extA intA:Int, extB intB:Int) -> Int
{
    return intA - intB // internal params
}

let subtraction = subTwoNumbers(extA: 5, extB: 2) // external params
print("The subtraction is \(subtraction)")

// Example 5
// Function with two params (the external names are ommited by underscore)
// It returns an Int

func mulTwoNumbers(_ a:Int,_ b:Int) -> Int
{
    return a * b
}

let multiplication = mulTwoNumbers(3, 5) // the function ommits external params
print("The multiplication is \(multiplication)")

// Example 6 - default values
func divTwoNumbers(a:Int = 1, b:Int = 1) -> Int // default values are 1
{
    return a / b
}

let division1 = divTwoNumbers()
let division2 = divTwoNumbers(a: 4)
let division3 = divTwoNumbers(b: 5)
let division4 = divTwoNumbers(a: 6, b:2)
print("Div 1: \(division1)")
print("Div 2: \(division2)")
print("Div 3: \(division3)")
print("Div 4: \(division4)")

// Example 7
// Inout - Functions that might change the variable value
// It does not return anything
func swap(_ x:inout Int,_ y:inout Int)
{
    let TempY = y
    y = x
    x = TempY
}

var myNumberFive = 5
var myNumberThree = 3
print("myNumberFive is \(myNumberFive) and myNumberThree is \(myNumberThree)")
swap(&myNumberFive, &myNumberThree)
print("myNumberFive is \(myNumberFive) and myNumberThree is \(myNumberThree)")

// Example 8 - variadic
// Passing multiple parameters
func printNStrings(strings: String...)
{
    for (i, str) in strings.enumerated()
    {
        print("My string \(i+1) is \(str)")
    }
}

printNStrings(strings: "dsdsds", "ds")
printNStrings(strings: "")

// Example 9 - nested functions
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
        something1();
    } else if what == 1
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

// Example 10
// return multiple params - Tuples
func didStudentPass(name:String, grade:Double) -> (name:String, passed:Bool)
{
    if grade >= 7.0
    {
        return (name, true)
    }
    else
    {
        return (name, false)
    }
}

let student = didStudentPass(name: "Luiz", grade: 6.0)
let student2 = didStudentPass(name: "Any Name", grade: 10.0)

// you can use tuples as heterogeneous arrays
print("The Student \(student.name) passed: \(student.passed)")
print("The Student \(student2.name) passed: \(student2.passed)")

// function as params
func sayHelloWorldAndAnotherThing(anotherThing: () -> Void)
{
    print("Hello World")
    anotherThing()
}

func myAnotherThingFunction()
{
    print("Another nice little thing")
}

sayHelloWorldAndAnotherThing(anotherThing: myAnotherThingFunction)


