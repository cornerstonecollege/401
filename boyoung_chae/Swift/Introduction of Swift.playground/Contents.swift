//: Playground - noun: a place where people can play

import Foundation

var str = "Hello, playground"
str = "Hi 2" // It is ok to change the value!
str = str.appending("a")
print(str)

let j:Int
j = 1
// J = 2 // It si not going to work because j is a constant.
print(j);


var studentName:String?
studentName = nil
studentName = "Chris"
studentName = "Bo Young"
print(studentName) // Wrapped value
print(studentName!) // Unwrapped value. I know that the value is not nil.
print(studentName?.appending("a")) // Unwrapped value if studentName is not nil.
print(studentName!.appending("a")) // Unwrapped value (we know that it is not nil.)


// Functions work just like Objective-C.
//[Object print:@"aaa" second:@"bbb" third:@ccc"];
print("Hey", "Hi", "Hello", separator: " ", terminator: ".\n")


/* Wrong - It's not Bollean. It's Ingeger.
if 1 {

}
 */

// Right - The if needs a boolean value unlike C and Objective-C.
if 1 == 1 {

}

if str == "Luiz" {
    print("str equals to Luiz.")
} else {
    print("str is not equals to Luiz.")
}


let alwaysTrue = true
while alwaysTrue { // Infinite loop
    print("hi")
    break // It will excute the loop only once.
}


let checkCondition = 1 > 2 // boolean value
repeat { // run at least once even though the condition is false.
    print("It will run only once")
} while (checkCondition)


// for (int i = 1 ; i <=10 ; i++)
for i in 1...10 { // 1,2,3,4,5,6,7,8,9,10
    print(i)
}

// for (int i = 1 ; i < 10 ; i++)
for i in 1..<10 { // 1,2,3,4,5,6,7,8,9
    print(i)
}


var string = String() // new regular string
var arr = [String]() // new array of strings
//var arr:[String] = [String]()
arr.append("a") // addObject
arr.append("b")
print(arr[1]) // print letter "b"

for string in arr {
    print("The string is \(string) \(1 + 2)")
}


let arrStrings = ["a", "b", "123", "567"]
print(arrStrings)

for (index, value) in arrStrings.enumerated() {
    print("The index: \(index) contains the value: \(value)");
}


var x = 1

true.description // true is object.
1.description // 1 is object.
// ==> Everything is an object.

1.description == "2"

// REPL - Rean, Evaluate, Print and Loop

var dictionary = [
                    "object1" : "table",
                    "object2" : "fridge"
                 ]

print(dictionary["object1"])
print(dictionary["object1"]!)


var dictionaryElements = [String:Int]()
dictionaryElements.updateValue(1, forKey: "DS")

var dictionaryElements2:[String:Int] = ["DS1":1, "DS2":2, "DS3":3]
//dictionaryElements2.removeValue(forKey: "DS3")

for (key, value) in dictionaryElements2 {
    print("The key is \(key) and the value is \(value)")
}

dictionaryElements2["DS4"] = 4
dictionaryElements2


print("\n")
print("=== Exercise1: Array ===")

let array1 = ["String1", "String2", "String3"]
var array2 = array1
//array2.append("String1")
//array2.append("String2")
//array2.append("String3")
array2.append("String4")
array2.append("String5")

print("The first value is \(array2[0]).");
print("The fifth value is \(array2[4]).");


print("\n")
print("=== Exercise2: Dictionary ===")

var storeDictionary = [String:String]()
storeDictionary.updateValue("table", forKey: "object1")
storeDictionary.updateValue("fridge", forKey: "object2")
storeDictionary.updateValue("WallMart", forKey: "storeName")
storeDictionary.updateValue("123 Fake St", forKey: "address")

print("The store \(storeDictionary["storeName"]!) in \(storeDictionary["address"]!) is selling \(storeDictionary["object1"]!) and \(storeDictionary["object2"]!).")

print("\n")
var str1 = "1234"
let intFromStr = Int(str1)
print(intFromStr)
print(intFromStr!)
