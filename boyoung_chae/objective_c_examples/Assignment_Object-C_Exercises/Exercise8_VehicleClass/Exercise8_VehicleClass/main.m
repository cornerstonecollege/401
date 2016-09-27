//
//  main.m
//  Exercise8_VehicleClass
//
//  Created by Boyoung on 2016-09-15.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vehicle.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSLog(@"=== Exercise 8 ===");
        NSLog(@"Create Vehicle class and test all properities and funcitions!");
        
        Vehicle *vehicle = [[Vehicle alloc] initWithColor:@"red" nWheels:4 andModel:@"Jeep"];
        
        NSLog(@"%@", vehicle);
        
        [vehicle changeColor:@"black"];
        [vehicle move];
    }
    return 0;
}
