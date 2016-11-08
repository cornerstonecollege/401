//
//  main.m
//  Blocks
//
//  Created by Boyoung on 2016-09-13.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>

//typedef void (^CalcType)(int, int);

// typedef for blocks
typedef void (^CalcType)(int, int);

// typedef for types
typedef char* customCString;

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
//        ClacType calc;
        
//        void (^calc)(int, int) = ^(int x, int y) {
//        
//        };
        
//        void (^calc)(int, int);
        
        CalcType calc;
        calc = ^(int a, int b) {
            NSLog(@"%d", (a + b));
        };
        
        CalcType calc2 = ^(int x, int y) {
            NSLog(@"%d", (x * y));
        };
        
        calc(2, 3); // Shows 5
        calc2(4, 5); // Shows 20

        calc2 = calc; // Assigns to calc block
        calc2(4, 5); // Shows 9

//        int x = 1;
//        int y;
//        y = 1;
        
        // ===== Second examples
        
        NSArray *array = @[@1, @4, @5, @"Hi", @"Hello"];
        
        for (id obj in array) {
            NSLog(@"%@", obj);
        }
        
        [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            NSLog(@"The element %lu is %@.", idx, obj);
        }];
        
        
        // ===== Second examples
        
    }
    return 0;
}
