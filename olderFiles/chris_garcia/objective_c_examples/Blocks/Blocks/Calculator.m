//
//  Calculator.m
//  Blocks
//
//  Created by Christian on 2016-09-14.
//  Copyright © 2016 Christian. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

+ (int) doCalcWithX:(int)x Y:(int)y andBlock:(BlockCalcType)block
{
    if (x < 0 || y < 0)
    {
        NSLog(@"X or Y cannot be less than zero");
        return -1;
    }
    
    return block(x, y);
}


@end
Contact GitHub API Training Shop Blog About
