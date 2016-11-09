//
//  main.m
//  DealingWithObjects
//
//  Created by Boyoung on 2016-09-06.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        // Obj-C
        NSNumber *number = @1;
        printf("The size is %ld.\n", sizeof(NSInteger));
        
//        number = [number initWithInt:5];
//        number = @5;
        
        // c number
        int x = 2;
        
        int sum = x + number.intValue; // number.intValue = [number intValue]
        NSLog(@"The sum is %i.", sum);
        NSLog(@"The sum of %@ and %i is %i.", number, x, sum);
        
//        String.alloc();
        NSString *string = [NSString alloc]; // means malloc.
//        NSString *string; // When this, the result shows (null).
        string = [string initWithFormat:@"The value of sum is: %i.", sum];
        
//        NSString *string = [NSString stringWithFormat:@"Hey"];
        NSLog(@"%@", string);   // same as [string.description]
    }
    return 0;
}