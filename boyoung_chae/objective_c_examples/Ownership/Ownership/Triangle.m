//
//  Triangle.m
//  Ownership
//
//  Created by Boyoung on 2016-09-09.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import "Triangle.h"

@implementation Triangle

- (void) dealloc
{
    NSLog(@"The Triangle %@ has been deallocated.", self);
}

@end
