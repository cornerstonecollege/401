//
//  Screen.m
//  Blocks_Screen
//
//  Created by Boyoung on 2016-09-13.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import "Screen.h"
#

@implementation Screen

- (instancetype) initWithCircle: (MyPolygon *)circle AndTriangle: (MyPolygon *)triangle
{
    self = [super init];
    
    if (self)
    {
        self.circle = circle;
        self.triangle = triangle;
    }
    
    return self;
}

- (void) moveRandomWithBlock:(int)x Y:(int)y andBlock:(BlockPositon)block
{
    int arc = arc4random_uniform(2);
    
    if (arc == 0)
    {
        [self moveCircleToX:x Y:y andBlock:block];
    }
    
    else
    {
        [self moveTriangleToX:x Y:y andBlock:block];
    }
    
}

- (void) moveCircleToX:(int)x Y:(int)y andBlock:(BlockPositon)block
{
    self.circle.x += x;
    self.circle.y += y;
    block(x, y);
    
    NSLog(@"The final position is (x = %lu, y = %lu).", self.circle.x, self.circle.y);
    NSLog(@"The final position is (x = %lu, y = %lu).", self.triangle.x, self.triangle.y);
}

- (void) moveTriangleToX:(int)x Y:(int)y andBlock:(BlockPositon)block
{
    self.triangle.x += x;
    self.triangle.y += y;
    block(x, y);
    
    NSLog(@"The final position is (x = %lu, y = %lu).", self.triangle.x, self.triangle.y);
}

@end
