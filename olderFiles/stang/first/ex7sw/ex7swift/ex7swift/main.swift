//
//  main.swift
//  ex7swift
//
//  Created by SG on 2016-10-05.
//  Copyright © 2016 SG. All rights reserved.
//

import Foundation



    struct firstLine {
        var side: Double
    }
    var FirstLineFever = firstLine(side: 0)
    FirstLineFever.side = 5

    
   print(FirstLineFever.side)


struct secLine {
    var perimeter = FirstLineFever.side * 4
}

var SecLineFever = secLine(perimeter: 5)
print(SecLineFever.perimeter * 4)

struct thirdLine {
    var area = FirstLineFever.side * FirstLineFever.side

}


func exTWO() {
let nowsy = FirstLineFever.side * 4
    print(nowsy)
    
}

exTWO()

