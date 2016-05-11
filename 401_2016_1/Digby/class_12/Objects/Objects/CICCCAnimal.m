//
//  CICCCAnimal.m
//  Objects
//
//  Created by Digby Andrews on 2016-05-11.
//  Copyright © 2016 Digby Andrews. All rights reserved.
//

#import "CICCCAnimal.h"

@interface CICCCAnimal ()

@property (nonatomic) BOOL isRunning;

@end

@implementation CICCCAnimal

- (void)run
{
    if(self.isRunning)
        return;
    
    self.isRunning = YES;
}

- (void) stopRunning
{
    if(!self.isRunning)
        return;
    
    self.isRunning = NO;
}

- (BOOL)isRunning
{
    return _isRunning;
}

@end
