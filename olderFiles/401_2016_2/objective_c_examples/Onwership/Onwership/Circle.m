//
//  Circle.m
//  Onwership
//
//  Created by Luiz on 2016-09-09.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import "Circle.h"

@implementation Circle

- (void)setX:(NSInteger)x andY:(NSInteger)y
{
    _x = x;
    _y = y;
    
    if (self.triangle)
    {
        self.triangle.x = x + 3;
        self.triangle.y = y - 5;
    }
}

- (void) dealloc
{
    NSLog(@"The Circle %@ has been deallocated.", self);
}

@end
