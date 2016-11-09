//
//  main.m
//  DealingWithObjects
//
//  Created by Christian on 2016-09-06.
//  Copyright © 2016 Christian. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNumber *number = @1;
        int x = 2;
        
        int sum = x + number.intValue;
        NSLog(@"The sum of %@ and %i is %i", number, x, sum);
    }
    return 0;
}
