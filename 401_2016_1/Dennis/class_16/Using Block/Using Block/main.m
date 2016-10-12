//
//  main.m
//  Using Block
//
//  Created by Dennis Pham on 2016-05-18.
//  Copyright © 2016 Dennis Pham. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Block.h"

typedef void (^voidBlock) ();
typedef int myInt;
int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
       
        NSArray *strArray = @[@"luiz", @"Digby", @"Dennis"];
        [strArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            NSLog(@"the object is %ld is %@", idx +1, obj);
        }];
        
       
        
        voidBlock myVoidBlock;
        myVoidBlock = ^{
            NSLog(@"You called a void block");
        };
        
        myVoidBlock();
        myVoidBlock();
        myVoidBlock();
        double result =[Block doCalWithA:4.0 B:5.0 usingBlock:^(double x, double y){
            return x + y;
        }];
        NSLog(@"The result is %f", result);
    }

    return 0;
}
