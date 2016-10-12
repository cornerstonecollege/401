//
//  Vehicle.m
//  Exercise9_10_Inheritance
//
//  Created by Boyoung on 2016-09-15.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle

- (instancetype) initWithColor:(NSString *)color Wheels:(NSInteger) nWheels andModel:(NSString *)model;
{
    self = [super init];
    
    if (self)
    {
        self.color = color;
        self.model = model;
        _nWheels = nWheels;
    }
    
    return self;
}

- (void) move
{
    NSLog(@"The vehicle has moved.");
}

- (NSString *) description
{
    return [NSString stringWithFormat:@"<<< Vehicle >>>\nColor: %@ / Wheels: %lu / Model: %@", self.color, self.nWheels, self.model];
}

@end
