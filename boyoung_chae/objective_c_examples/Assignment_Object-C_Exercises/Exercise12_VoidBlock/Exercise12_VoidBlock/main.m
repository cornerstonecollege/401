//
//  main.m
//  Exercise12_VoidBlock
//
//  Created by Boyoung on 2016-09-16.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Motorcycle.h"

typedef void (^VoidBlock)(void);

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSLog(@"=== Exercise 12 ===");
        NSLog(@"Create a new method called moveWithBlokc!");

        VoidBlock passBlock;
        
        passBlock = ^void(void)
        {
            NSLog(@"[No.12 Void block] The Void block is passed!");
        };
        
        
        // === Car ===
        Car *car = [[Car alloc] initWithColor:@"red" andModel:@"Jeep"];
        
        NSLog(@"%@", car.description);
        [car move];
        [car moveWithBlock: passBlock];

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
