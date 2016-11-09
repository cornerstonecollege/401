//
//  main.swift
//  ex5sw
//
//  Created by SG on 2016-10-03.
//  Copyright © 2016 SG. All rights reserved.
//

import Foundation

var x: Int = 0
let squareX: () -> Void

print("Pls enter number of first variable...")
withUnsafePointer(&x) {
    vscanf("%ld", getVaList([COpaquePointer($0)]))
}

print("Your typed: \(x)")