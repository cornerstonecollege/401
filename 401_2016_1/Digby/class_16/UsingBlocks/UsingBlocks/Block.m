//
//  Block.m
//  UsingBlocks
//
//  Created by Digby Andrews on 2016-05-18.
//  Copyright © 2016 Digby Andrews. All rights reserved.
//

#import "Block.h"

@implementation Block

+ (double)doCalcWithA:(double)a B:(double)b usingBlock:(CalcBlock)block

{
    if (a > 0)
    {
        NSLog(@"%f",a);
    }
    if (b > 0) {
        NSLog(@"%f",b);
    }
    return block(a, b);
}

@end
