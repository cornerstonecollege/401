//
//  main.m
//  Blocks
//
//  Created by Luiz on 2016-09-13.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

// typedef for block
typedef void (^CalcType)(int, int);

// typedef for types
typedef char* customCString;

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        CalcType calc;
        calc = ^(int a, int b){
            NSLog(@"%d", (a + b));
        };
        
        __block int sum = 0;
        CalcType calc2 = ^(int x, int y){
            NSLog(@"%d", (x * y));
            sum++;
        };
        
        // show 5
        calc(2, 3);
        // show 20
        calc2(4, 5);
        // assign to calc block
        calc2 = calc;
        // show 9
        calc2(4, 5);
        
        
        // ===== That would be the same as:
        
        int x = 1;
        int y = 3;
        
        // print x
        // print y
        y = x;
        
        // print y
        
        
        // ===== second example
        
        NSArray *array = @[@1, @4, @5, @"Hi", @"Hello"];
        
        for (id obj in array) {
            NSLog(@"%@", obj);
        }
        
        [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            NSLog(@"The element %lu is %@", idx, obj);
        }];
        
        // ===== third example
        int mySum = [Calculator doCalcWithX:2 Y:5 andBlock:^int(int a, int b) {
            return a + b;
        }];
        
        NSLog(@"The sum is: %i", mySum);
        
        int myMult = [Calculator doCalcWithX:2 Y:5 andBlock:^int(int a, int b) {
            return a * b;
        }];
        
        NSLog(@"The multiplication is: %i", myMult);
        
        int error = [Calculator doCalcWithX:-1 Y:5 andBlock:^int(int a, int b) {
            return a / b;
        }];
        
        if (error == -1){
            NSLog(@"There was an error");
        }
        
    }
    return 0;
}
