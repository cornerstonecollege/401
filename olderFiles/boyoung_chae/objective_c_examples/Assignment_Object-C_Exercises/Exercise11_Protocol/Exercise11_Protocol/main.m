//
//  main.m
//  Exercise11_Protocol
//
//  Created by Boyoung on 2016-09-16.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Motorcycle.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSLog(@"=== Exercise 11 ===");
        NSLog(@"Create a protocol and test!");

        // === Car ===
        Car *car = [[Car alloc] initWithColor:@"red" andModel:@"Jeep"];
        
        NSLog(@"%@", car.description);
        [car move];
        
        // Protocol for Car class: Required
        [car moveWithTurbo1];
        
        // Protocol for Car class: Optional
        if ([car respondsToSelector:@selector(moveWithTurbo2)])
        {
            [car moveWithTurbo2];
        }

        
        // === Motorcycle ===
        Motorcycle *motorcycle = [[Motorcycle alloc] initWithColor:@"Black" andModel:@"Harley-davidson"];
        
        NSLog(@"%@", motorcycle.description);
        [motorcycle move];
        
    }
    return 0;
}
