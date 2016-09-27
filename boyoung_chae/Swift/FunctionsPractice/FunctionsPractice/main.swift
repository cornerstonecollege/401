//
//  main.swift
//  FunctionsPractice
//
//  Created by Boyoung on 2016-09-26.
//  Copyright © 2016 Boyoung. All rights reserved.
//

import Foundation

typealias FunctionVoid = (String) -> Void


print("=== Exercise 3 : variadic ===")

func storeData(strings: String...)
{
    print("The store \(strings[2]) is selling \(strings[0]) and \(strings[1]).")
}

storeData(strings: "table", "fridge", "WallMart", "123 Fake St")


print()
print("=== Exercise 4 : nested functions ===")

func getNames(controlWord: String = "a")
{
    /*
    func getName1(name: String = "No name") -> String
    {
        return name
    }

    func getName2(name: String = "No name") -> String
    {
        return name
    }
    
    func getName3(name: String = "No name") -> String
    {
        return name
    }
    
    func getName4(name: String = "No name") -> String
    {
        return name
    }
    
    func getName5(name: String = "No name") -> String
    {
        return name
    }
     */
    
    func getFunctions(funcArray: FunctionVoid...)
    {
        for fct in funcArray
        {
            fct("a")
        }
    }
    
    func getName(name: String)
    {
        print("\(name)")
    }
    
    if controlWord == "done"
    {
        print("Try later!")
    }
    
    else
    {
        /*
        let name1 = getName1(name: "Amy")
        let name2 = getName2()
        let name3 = getName3(name: "Tom")
        let name4 = getName4(name: "Bobby")
        let name5 = getName5()
        
        print(name1)
        print(name2)
        print(name3)
        print(name4)
        print(name5)
         */
        
        // It's function pointer.
        getFunctions(funcArray:
            getName
        )
    }
}

getNames()
getNames(controlWord: "done")
getNames(controlWord: "continued")


print()
print("=== Exercise 6 / 7 : Function as params ===")

func httpRequest(functionParameter: () -> Void)
{
    functionParameter();
}

func requestWithCallBack()
{
    print("The request is done!")
}

httpRequest(functionParameter: requestWithCallBack)
