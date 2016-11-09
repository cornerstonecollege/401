//
//  main.swift
//  StoredAndComputedProperties
//
//  Created by Boyoung on 2016-09-29.
//  Copyright © 2016 Boyoung. All rights reserved.
//

import Foundation

class Monster : NSObject
{
    // Computed properties
    override var description: String
    {
        return "This is a monster."
    }
}

var myMonster = Monster()
print(myMonster)

class Employee
{
    // Stored properties
    var wage: Double = 0.0
    var nHoursWorked: Double = 0.0

    // Computed property
    var salary: Double
    {
        return wage * nHoursWorked
    }
    
    init(wage: Double, nHoursWorked: Double)
    {
        self.wage = wage
        self.nHoursWorked = nHoursWorked
    }
}

var myEmployee = Employee(wage: 50.0, nHoursWorked: 100.5)
print(myEmployee.salary)


class Manager : Employee
{
    // Stored properties
    var accessKey: Bool = false // Property observers for stored properties
    {
        willSet(newBoolean)
        {
            print("Before setting: access key \(accessKey) new value \(newBoolean)")
        }
        
        didSet
        {
            print("After setting: old value \(oldValue) accessKey \(accessKey)")
        }
    }
}

var myManager = Manager(wage: 100.0, nHoursWorked: 1)
// willSet will be called.
myManager.accessKey = true
// didSet will be called.


class Tester : Employee
{
    var tasks: [Bool]

    var didFinishAllTasks: Bool // Computed properties
    {
        get
        {
            var finished = true
            for task in tasks   // if all tasks are done, it will return ture at the end.
            {
                if !task
                {
                    finished = false
                    break
                }
            }
            
            return finished
        }
        
//        set(myNewValue)
//        {
//            self.tasks[0] = myNewValue
//        }
        
//        set
//        {
//            self.tasks[0] = newValue
//        }
    }

    init(tasks:[Bool], wage: Double, nHoursWorked: Double)
    {
        self.tasks = tasks
        super.init(wage: wage, nHoursWorked: nHoursWorked)
    }
}

var myTester1 = Tester(tasks: [true, false, true], wage: 20.0, nHoursWorked: 20)
var myTester2 = Tester(tasks: [true, true, true], wage: 20.0, nHoursWorked: 20)

print("My tester1 finished all tasks: \(myTester1.didFinishAllTasks)")
print("My tester2 finished all tasks: \(myTester2.didFinishAllTasks)")
