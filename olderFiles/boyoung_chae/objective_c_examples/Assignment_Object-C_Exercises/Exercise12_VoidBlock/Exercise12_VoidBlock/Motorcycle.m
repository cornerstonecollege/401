//
//  Motorcycle.m
//  Exercise12_VoidBlock
//
//  Created by Boyoung on 2016-09-16.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import "Motorcycle.h"

@implementation Motorcycle

- (instancetype) initWithColor:(NSString *)color andModel:(NSString *)model
{
    self = [super initWithColor:color Wheels:2 andModel:model];
    
    return self;
}

- (void) move
{
    NSLog(@"The motorcycle has moved.");
}

- (NSString *) description
{
    return [NSString stringWithFormat:@"<<< Motorcycle >>>\nColor: %@ / Wheels: %lu / Model: %@", self.color, self.nWheels, self.model];
}

@end
