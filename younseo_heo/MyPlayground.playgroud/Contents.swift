//: Playground - noun: a place where people can play
import Foundation

var str:String? = "Hello, playground"
str = "Hi 2"

print(str!)
str = nil
//str = str.appending("a")

let j : Int
j = 1
//j = 2 It's not working because j is a constant

print(str)
print(j)


var studentName:String?
studentName = nil
studentName = "Chris"
studentName = "Boyoung"
print(studentName) // Wrapped value.
print(studentName!) // Unwrapped value. I know the valu is not nil
//print(studentName?.appending("a")) // Unwrapped value if studentName is not nil
//print(studentName!.appending("a")) // Unwrapped value (We know it is no nil)

// Functions work jus like obj-c
print("aaaa", "hey", "hi", separator: " ", terminator: " .")

// WRONG
//if 1 {
//
//}

// RIGHT
//if 1 == 1 { the if needs a boolean value unlike C and obj-c
//    
//}

if str == "Luiz" {
    print("str equals to Luiz")
} else {
    print("str is not equals to Luiz")
}

let alwaysTrue = true // boolean value

while alwaysTrue { // infinitive value
    print("Hi")
    break
}

let checkCondition = 1 > 2 // boolean value
repeat { // Run at least once even though the condition is false
    print("It will run only once")
} while (checkCondition)

for i in 1...10 { // the range : 1 ~ 10
    print(i)
}

for i in 1..<10 { // the range : 1 ~ 9
    print(i)
}



var string = String() // new regular string

var arr = [String]() // new array of strings
arr.append("a") // addObject
arr.append("b")

print(arr[1]) // print letter b

for string in arr {
    print("The string is \(string) \(1 + 2)"); // format for a string
}

let arrString = ["a", "b", "123", "456"]
print(arrString)

for (index, value) in arrString.enumerate()
{
    print("The index : \(index) contains the value : \(value)")
}

var x = 1

true.description // everything is an object
1.description == "1"

// REPL - Read, Evaluate, Print, Loop

var dictionary = ["object1" : "table", "object2" : "fridge"]
print(dictionary["object1"]!)

var dictionaryElements : [String:Int] = ["DS":1, "DS2":2, "DS3":3]
//dictionaryElements.updateValue(1, forKey: "DS")
//dictionaryElements.removeValue(forKey:"DS3")
//dictionaryElements

for (key, value) in dictionaryElements {
    print("The key is \(key) and the value is \(value)")
}

dictionaryElements["DS4"] = 4
dictionaryElements



//==================== No 2 ========================
let newArr = ["String1","String2","String3"]

var string2 = String()
var newArr2 = [String]()
newArr2 = newArr
newArr2.append("String0")
newArr2.append("String4")

print(newArr2[0])
print(newArr2[4])


//==================== No 3 ========================
var dictionary2 = ["object1" : "tables",
                   "object2" : "fridges",
                   "storeName" : "WallMart",
                   "address" : "123 Fake St"]

print("The store \(dictionary2["storeName"]!) located in \(dictionary2["address"]!) displays \(dictionary2["object1"]!) and \(dictionary2["object2"]!).")






