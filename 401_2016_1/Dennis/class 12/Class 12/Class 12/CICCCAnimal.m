//
//  CICCCAnimal.m
//  Class 12
//
//  Created by Dennis Pham on 2016-05-11.
//  Copyright © 2016 Dennis Pham. All rights reserved.
//

#import "CICCCAnimal.h"

@interface CICCCAnimal()

@property(nonatomic) BOOL isRunning;

@end

@implementation CICCCAnimal
- (void)run
{
    if(self.isRunning)
        return;
    
    self.isRunning = YES;
    NSLog(@"Running");
    
}

-(void)stopRunning
{
    if(!self.isRunning)
        return;
    
    self.isRunning = NO;
    NSLog(@"Not Running");
}

-(BOOL)isRunning
{
    
    return _isRunning;
    
}
@end
