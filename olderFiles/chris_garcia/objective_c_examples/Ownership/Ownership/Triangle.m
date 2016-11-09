//
//  Triangle.m
//  Ownership
//
//  Created by Christian on 2016-09-09.
//  Copyright © 2016 Christian. All rights reserved.
//

#import "Triangle.h"

@implementation Triangle

- (void) dealloc
{
    NSLog(@"The Triangle %@ has been deallocated.", self);
}

@end
