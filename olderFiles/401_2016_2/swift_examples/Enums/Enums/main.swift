//
//  main.swift
//  Enums
//
//  Created by Luiz on 2016-09-27.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

import Foundation

// Example 1
enum HTTPError
{
    case Unauthorized
    case NotFound
    case BadGateway
}

var myError = HTTPError.NotFound

switch myError
{
case HTTPError.NotFound: print("NotFound"); print(myError.hashValue)
case .BadGateway: print("Bad Gateway");
default: print("Unknown");
}

// Example 2
enum CardinalPoint:Int // enums with raw values
{
    case NORTH = 0
    case SOUTH = 1
    case WEST = 2
    case EAST = 3
}

let c = CardinalPoint.NORTH
print(c.rawValue)

let x = 2
let myCardinalPoint = CardinalPoint(rawValue: x)
print(myCardinalPoint!)


// Example 3

enum HTTPErrorWithDetail
{
    case Unauthorized(detail:String)
    case NotFound(detail:String, moreDetails:String?)
    case BadGateway(detail:String)
}

let myConstant = HTTPErrorWithDetail.NotFound(detail: "The page does not exist", moreDetails: nil)
switch myConstant
{
case HTTPErrorWithDetail.NotFound(let detailInfo, _): print(detailInfo)
default: print("Not enough info.")
}


let const1 = HTTPErrorWithDetail.Unauthorized(detail: "Hhahaha")
let const2 = HTTPErrorWithDetail.Unauthorized(detail: "Hello World")
let arr = [const1, const2]

for element in arr
{
    switch element
    {
    case .Unauthorized(let theDetails) where theDetails.hasPrefix("Hello"): print(element)
    default: break
    }
}

// Example for pure SWITCHES

let string = "my very nice string"

switch string
{
case let s where s.hasPrefix("Hi"): print("Started with hi")
case "a", "Hello World", "hahahah": print("Not a very nice string")
case "b": fallthrough
case "c": print("b or c")
default: print("Nothing interesting")
}
