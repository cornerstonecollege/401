//
//  Vehicle.m
//  ObjectiveCClass
//
//  Created by Christian on 2016-09-07.
//  Copyright © 2016 Christian. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle

public Vehicle(String color, int nWheels)
{
    super();
    this.color = color;
    this.nWheels = nWheels;
}

-(instancetype) initWithColor:(NSString *)color andNumberWheels:(NSInteger)nWheels
{

    self = [super init];
    if (self) {
        self.color = color;
        self.nWheels = nWheels;
    }
}


@end
