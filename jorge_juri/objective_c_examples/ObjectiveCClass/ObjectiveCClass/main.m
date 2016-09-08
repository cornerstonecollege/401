//
//  main.m
//  ObjectiveCClass
//
//  Created by Luiz on 2016-09-07.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vehicle.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        Vehicle *car = [[Vehicle alloc] initWithColor:@"Red" andNumberWheels:4];
        Vehicle *motocycle = [[Vehicle alloc] initWithColor:@"Black" andNumberWheels:2];
        
        
        NSLog(@"%@", car);
        NSLog(@"%@", motocycle);
    }
    return 0;
}
