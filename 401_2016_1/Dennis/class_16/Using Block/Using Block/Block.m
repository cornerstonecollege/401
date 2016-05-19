//
//  Block.m
//  Using Block
//
//  Created by Dennis Pham on 2016-05-18.
//  Copyright © 2016 Dennis Pham. All rights reserved.
//

#import "Block.h"

@implementation Block

+ (double) doCalWithA:(double)a B:(double)b usingBlock:(CalcBlock)block;

{
    if(a > 0)
    {
        NSLog(@"%f", a);
    }
    if(b > 0)
    {
        NSLog(@"%f", b);
    }
    
    return block(a,  b);
}

@end
