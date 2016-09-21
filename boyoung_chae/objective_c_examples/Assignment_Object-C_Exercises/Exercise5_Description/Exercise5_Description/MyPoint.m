//
//  MyPoint.m
//  Exercise5_Description
//
//  Created by Boyoung on 2016-09-15.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import "MyPoint.h"

@implementation MyPoint

- (void) setThePointX: (NSNumber *)X Y:(NSNumber *)Y
{
    _X = X;
    _Y = Y;
}

- (NSString *) description
{
    return [NSString stringWithFormat:@"X:%@ Y:%@", self.X, self.Y];
}

@end
