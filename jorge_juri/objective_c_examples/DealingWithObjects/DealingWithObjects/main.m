//
//  main.m
//  DealingWithObjects
//
//  Created by Luiz on 2016-09-06.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        // Obj-C number
        NSNumber *number = @1;
        // c number
        int x = 2;
        
        int sum = x + number.intValue;
        NSLog(@"The sum of %@ and %i is %i", number, x, sum);
        
        NSString *string = [NSString stringWithFormat:@"Hey"];
        NSLog(@"%@", [string description	]);
    }
    return 0;
}
