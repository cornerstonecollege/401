//
//  Vehicle.m
//  ObjectiveCClass
//
//  Created by Luiz on 2016-09-07.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle


- (instancetype) initWithColor:(NSString *)color andNumberWheels:(NSInteger)nWheels
{
    self = [super init];
    if (self)
    {
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