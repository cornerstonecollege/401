//
//  main.m
//  ex9and10
//
//  Created by SG on 2016-09-21.
//  Copyright © 2016 SG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "vehicle.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        vehicle *obiekt = [vehicle new];
        [obiekt move];
        
        obiekt.color = @"white";
        NSLog(@"Current color is %@", obiekt.color);
        
        obiekt.model = @"pantera";
        NSLog(@"Your vehicle is %@", obiekt.model);
        
        [obiekt changeColor];

    
    
    
    }
    return 0;
}
