//
//  main.m
//  ObjectiveCClass
//
//  Created by Boyoung on 2016-09-07.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vehicle.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
//        car = new Car("Red", 4);
        Vehicle *car = [[Vehicle alloc] initWithColor:@"Red" andNumberWheels:4];
//        Vehicle *car2 = [Vehicle v:(NSString *) w:(NSInteger)];
        
        Vehicle *motocycle = [[Vehicle alloc] initWithColor:@"Black" andNumberWheels:2];
        
        NSLog(@"%@", car);
        NSLog(@"%@", motocycle);
    }
    return 0;
}
