//
//  CICCCAnimal.m
//  Objects
//
//  Created by CICCC1 on 2016-05-11.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import "CICCCAnimal.h"

@interface CICCCAnimal ()

@property (nonatomic) BOOL isRunning;

@end

@implementation CICCCAnimal

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        _name = @"(Does not have name)";
    }
    return self;
}

- (void)run
{
    if (self.isRunning)
        return;
    
    self.isRunning = YES;
    NSLog(@"Running");
}

- (void)stopRunning
{
    if (!self.isRunning)
        return;
    
    self.isRunning = NO;
    NSLog(@"Not running");
}

- (BOOL)isRunning
{
    return _isRunning;
}

@end
