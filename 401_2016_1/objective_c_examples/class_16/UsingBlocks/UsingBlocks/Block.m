//
//  Block.m
//  UsingBlocks
//
//  Created by CICCC1 on 2016-05-18.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import "Block.h"

@implementation Block

+ (double) doCalcWithA:(double)a B:(double)b usingBlock:(CalcBlock)block
{
    if (a > 0)
    {
        NSLog(@"%f", a);
    }
    if (b > 0)
    {
        NSLog(@"%f", b);
    }
    
    double res = block(a, b);
    return res * 20;
}

@end
