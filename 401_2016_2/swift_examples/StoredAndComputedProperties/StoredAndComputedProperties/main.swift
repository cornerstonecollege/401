//
//  main.swift
//  StoredAndComputedProperties
//
//  Created by Luiz on 2016-09-29.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

import Foundation

class Monster : NSObject
{
    override var description: String{ // computed property
        return "This is a monster"
    }
}

var myMonster = Monster()
print(myMonster)

class Employee
{
    var wage:Double = 0.0 // stored properties
    var nHoursWorked:Double = 0.0
    
    var salary:Double { // computed property
        return wage * nHoursWorked
    }
    
    init(wage:Double, nHoursWorked:Double) {
        self.wage = wage
        self.nHoursWorked = nHoursWorked
    }
}

var myEmployee = Employee(wage: 50.0, nHoursWorked: 100.5)
print(myEmployee.salary)

class Manager : Employee
{
    var accessKey:Bool = false { // property observers for stored properties
        willSet{
            print("Before setting: access key (\(accessKey)) new value (\(newValue))")
        }
        
        didSet{
            print("After setting: old value (\(oldValue)) access key (\(accessKey))")
        }
    }
}

var myManager = Manager(wage: 100.0, nHoursWorked: 1)
// willSet will be called
myManager.accessKey = true
// didSet will be called

class Tester: Employee
{
    var tasks:[Bool]
    
    var didFinishAllTasks:Bool { // computed property
        get {
            var finished = true
            for task in tasks { // if all tasks are done, it will return true at the end
                if !task {
                    finished = false
                    break
                }
            }
            
            return finished
        }
        
//        set{
//            self.tasks[0] = newValue
//        }
    }
    
    init(tasks:[Bool], wage: Double, nHoursWorked: Double) {
        self.tasks = tasks
        super.init(wage: wage, nHoursWorked: nHoursWorked)
    }
}

var myTester = Tester(tasks: [true, false, true], wage: 20.0, nHoursWorked: 20)
var myTester2 = Tester(tasks: [true, true, true], wage: 20.0, nHoursWorked: 20)

print("My tester 1 finished all tasks: \(myTester.didFinishAllTasks)")
print("My tester 2 finished all tasks: \(myTester2.didFinishAllTasks)")
