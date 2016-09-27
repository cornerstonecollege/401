//
//  Vehicle.m
//  ObjectiveCClass
//
//  Created by Boyoung on 2016-09-07.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle

// - : means object type <= my object calls the function.
// instancetype : return type
// initWithColor : the name fo the method
// (NSString *)color : parameter
// andNumberWheels : not another method, continue...

//public Vehicle(String color, int nWheels)
//{
//    super();
//    this.color = colorl
//    this.nWheels = nWheels;
//}

// constructor (same as upper java code)

- (instancetype) initWithColor:(NSString *)color andNumberWheels:(NSInteger)nWheels
{
    // initWithColor is an external name / color is an internal name.
    
    self = [super init];
    
    if (self)
    {
        // initialize
        self.color = color;
        self.nWheels = nWheels;
    }
    
    return self;
}

- (NSString *) description
{
    return [NSString stringWithFormat:@"Color:%@ Wheels:%lu", self.color, self.nWheels];
}

@end

//initWithColor:andNumberWheels:
//initWithColor:@"Red" andNumberWheels:3