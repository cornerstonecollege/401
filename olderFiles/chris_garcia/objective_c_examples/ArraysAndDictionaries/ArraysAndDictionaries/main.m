//
//  main.m
//  ArraysAndDictionaries
//
//  Created by Christian on 2016-09-07.
//  Copyright © 2016 Christian. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *myArray = @[@1, @"Hi" , @"Hello world"];
        NSMutableArray *mutableArray = [NSMutableArray arrayWithArray:myArray];
        [mutableArray addObject:@"New Object"];
        NSLog(@"%@", mutableArray);
        NSLog(@"%@", mutableArray [3]);
        
        NSDictionary *myDictionary = @{
                                       @"Key" : @"Value",
                                       @"Key2" : @"Value2",
                                       @"Key3" : @"Value3",
                                       @"Key4" : @"Value4",
                                       @"2" : @"3"
                                       };
        
        NSLog(@"%@", myDictionary);
        NSLog(@"%@", myDictionary[@"x"]);
    }
    return 0;
}
