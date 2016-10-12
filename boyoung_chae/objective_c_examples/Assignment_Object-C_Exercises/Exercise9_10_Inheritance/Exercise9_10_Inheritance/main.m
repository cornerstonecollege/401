//
//  main.m
//  Exercise9_10_Inheritance
//
//  Created by Boyoung on 2016-09-15.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Motorcycle.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSLog(@"=== Exercise 9 / 10 ===");
        NSLog(@"Create two classes that inherite from Vehicle class!");
        
        Car *car = [[Car alloc] initWithColor:@"red" andModel:@"Jeep"];
        
        Motorcycle *motorcycle = [[Motorcycle alloc] initWithColor:@"Black" andModel:@"Harley-davidson"];
        
        NSLog(@"%@", car.description);
        [car move];
        
        NSLog(@"%@", motorcycle.description);
        [motorcycle move];
    }
    return 0;
}
