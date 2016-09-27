//
//  Car.m
//  Exercise11_Protocol
//
//  Created by Boyoung on 2016-09-16.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import "Car.h"

@implementation Car

- (instancetype) initWithColor:(NSString *)color andModel:(NSString *)model
{
    self = [super initWithColor:color Wheels:4 andModel:model];
    
    return self;
}

- (void) move
{
    NSLog(@"The car has moved.");
}

// For Protocol
- (void) moveWithTurbo1
{
    NSLog(@"Required: The car has moved with turbo!");
}

- (void) moveWithTurbo2
{
    NSLog(@"Optional: The car has moved with turbo!");
}

- (NSString *) description
{
    return [NSString stringWithFormat:@"<<< Car >>>\nColor: %@ / Wheels: %lu / Model: %@", self.color, self.nWheels, self.model];
}

@end
