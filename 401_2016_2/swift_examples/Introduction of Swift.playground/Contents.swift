//: Playground - noun: a place where people can play

import Foundation

var str = "Hello, playground"
str = "Hi 2" // it is ok!
str = str.appending("a")
print(str)

let j:Int
j = 2
//j = 2 // it is not going to work because j is a constant
print(j)


var studentName:String?
studentName = nil
studentName = "Christian"
studentName = "Bo Young"
print(studentName) // Wrapped value
print(studentName!) // Unwrapped value. I know that the value is not nil
print(studentName?.appending("a")) // Unwrapped value if studentName is not nil.
print(studentName!.appending("a")) // Unwrapped value (we know that it is not nil).


// functions work just like obj-c
print("dsds","hey","hi", separator:" ", terminator:" .")

/* Wrong
if 1 {
    
}
 */

/* Right
if 1 == 1 { // the if needs a boolean value unlike C and Obj-C
 
}
 */

if str == "Luiz" {
    print("str equals to Luiz")
} else {
    print("str is not equals to Luiz")
}

let alwaysTrue = true // boolean value
while alwaysTrue { // infinite loop
    print("hi")
    break // it will execute the loop only once
}

let checkCondition = 1 > 2 // boolean value
repeat { // run at least once even though the condition is false
    print("It will run only once")
} while (checkCondition)

// for (int i = 1; i <= 10; i++)

for i in 1...10{ // 1,2,3,4,5,6,7,8,9,10
    print(i)
}

// for (int i = 1; i < 10; i++)
for i in 1..<10 { // 1,2,3,4,5,6,7,8,9
    print(i)
}


var string = String() // new regular string


var arr = [String]() // new array of strings
arr.append("a") // addObject
arr.append("b")

print(arr[1]) // print letter b


for string in arr {
    print("The string is \(string) \(string)");
}

let arrStrings = ["a", "b", "123", "567"]
print(arrStrings)

for (index, string) in arrStrings.enumerated() {
    print("The index: \(index) contains the value: \(string)");
}


var x = 1
true.description // everything is an object
1.description == "1"

// REPL - Read, Evaluate, Print, Loop

var dictionary = [
                    "object1" : "table",
                    "object2" : "fridge"
                 ]

print(dictionary["object1"]!)


var dictionaryElements:[String:Int] = ["DS":1, "DS2":2, "DS3":3]
//dictionaryElements.updateValue(1, forKey: "DS")
//dictionaryElements.removeValue(forKey: "DS3")
//dictionaryElements

for (key, value) in dictionaryElements {
    print("The key is \(key) and the value is \(value)")
}

dictionaryElements["DS4"] = 4
dictionaryElements




