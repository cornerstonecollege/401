//
//  main.swift
//  ex6swift
//
//  Created by SG on 2016-10-03.
//  Copyright © 2016 SG. All rights reserved.
//

import Foundation

struct Lamp{
var propertyIsOn = true
var propertyIsOff = false
}


let onLamp = Lamp(propertyIsOn: true, propertyIsOff: false)
let offLamp = Lamp(propertyIsOn: false, propertyIsOff: true)

var decide: String
print("Lamp in the property is on (type Y) or off (type N)")
decide = readLine()!

if decide == "Y"{
print(onLamp.propertyIsOn)
}
if decide == "N"{
print(offLamp.propertyIsOff)
}