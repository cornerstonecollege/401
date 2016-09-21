//
//  Vehicle.m
//  Exercise8_VehicleClass
//
//  Created by Boyoung on 2016-09-15.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle

- (instancetype) initWithColor:(NSString *) color nWheels:(NSInteger) nWheels andModel:(NSString *) model
{
    self = [super init];
    
    if (self) {
        _color = color;
        _nWheels = nWheels;
        _model = model;
    }
    
    return self;
}

- (void) changeColor:(NSString *)color
{
    _color = color;
    NSLog(@"New color: %@", color);
}

- (void) move
{
    NSLog(@"Method has not been implemented.");
}

- (NSString *) description
{
    return [NSString stringWithFormat:@"\n## Car ##\nColor: %@\nThe number of wheels: %lu\nModel: %@", self.color, self.nWheels, self.model];
}

@end
