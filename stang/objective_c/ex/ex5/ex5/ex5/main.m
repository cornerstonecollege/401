//
//  main.m
//  ex5
//
//  Created by SG on 2016-09-21.
//  Copyright © 2016 SG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pointt.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
     
        
        Pointt *obiekt = [Pointt new];
        
        [obiekt setX: 3];
        [obiekt setY: 9];
        
        [obiekt show];
        
        
    }
    return 0;
}
