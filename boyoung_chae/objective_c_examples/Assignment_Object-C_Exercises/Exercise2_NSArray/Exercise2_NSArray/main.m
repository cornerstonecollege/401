//
//  main.m
//  Exercise2_NSArray
//
//  Created by Boyoung on 2016-09-14.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSLog(@"=== Exercise 2 ===");
        NSLog(@"Create NSArray and NSMutableArray!");

        NSArray *stringArray = @[@"String 1", @"String 2", @"String 3"];
        NSMutableArray *mutableArray = [NSMutableArray arrayWithArray:stringArray];
        
        [mutableArray addObject:@"String 4"];
        [mutableArray addObject:@"String 5"];
        
        // Using printf
//        printf("%s\n", [[stringArray[0] description] UTF8String]);
        
        NSLog(@"* Result * \nThe elements of the mutableArray: the 0th => %@, the 5th => %@", mutableArray[0], mutableArray[4]);
    }
    return 0;
}
