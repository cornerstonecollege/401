//
//  main.m
//  UsingBlocks
//
//  Created by CICCC1 on 2016-05-18.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Block.h"

typedef void (^voidBlock) ();

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSArray *strArray = @[@"Luiz", @"Digby", @"Dennis"];
        [strArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            NSLog(@"The object %ld is %@", idx + 1, obj);
        }];
        
        voidBlock myVoidBlock;
        myVoidBlock = ^{
            NSLog(@"You called a void block");
        };
        
        myVoidBlock();
        myVoidBlock();
        myVoidBlock();
        
        double result = [Block doCalcWithA:4.0 B:5.0 usingBlock:^(double x, double y){
            if (x > y)
                return x;
            else
                return y;
        }];
        
        NSLog(@"The result is %f", result);
    }
    return 0;
}
