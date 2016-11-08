//
//  main.m
//  UsingBlocks
//
//  Created by Digby Andrews on 2016-05-18.
//  Copyright © 2016 Digby Andrews. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Block.h"

typedef void (^voidBlock)();

int main(int argc, const char * argv[]) {
    
    @autoreleasepool
    {
        NSArray *strArray = @[@"Luiz",@"Dennis",@"Digby"];
        [strArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            NSLog(@"The objec %ld is %@", idx + 1, obj);
        }];
        
        voidBlock myVoidBlock;
        myVoidBlock = ^{
            NSLog(@"You called a void block");
        };
        
        myVoidBlock ();
        myVoidBlock ();
        myVoidBlock ();
        
        double result = [Block doCalcWithA:4.0 B:5.0 usingBlock:^(double x, double y){
            return x+y;
        }];
        
        NSLog(@"Double result is %f", result);
    }
    return 0;
}
2334