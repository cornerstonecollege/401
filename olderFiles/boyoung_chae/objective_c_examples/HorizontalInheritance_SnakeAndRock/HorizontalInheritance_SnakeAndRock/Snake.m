//
//  Snake.m
//  HorizontalInheritance_SnakeAndRock
//
//  Created by Boyoung on 2016-09-12.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import "Snake.h"

@implementation Snake

// Required
- (void) shake
{
    [self react];
}

// Optional
- (void) react
{
    NSLog(@"Snake: Shake and React");
}

@end
