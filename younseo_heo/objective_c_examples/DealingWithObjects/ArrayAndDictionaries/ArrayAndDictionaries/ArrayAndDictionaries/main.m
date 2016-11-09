//
//  main.m
//  ArrayAndDictionaries
//
//  Created by younseolocal on 2016-09-07.
//  Copyright © 2016 younseolocal. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
//        NSString *str = @"Luiz";
//        NSString *str2 = str;
//        
//        NSLog(@"%p %p", &str, &str2);
        NSArray *myArray = @[@1, @"Hi", @"Hello world"];
        
        NSMutableArray *mutableArray = [NSMutableArray arrayWithArray:myArray];
        [mutableArray addObject:@"New Object"];
        
        //NSLog(@"%@", myArray);
        //NSLog(@"%@", mutableArray);
        //NSLog(@"%@", mutableArray[3]);
        
        NSDictionary *myDictionary = @{
                                       @"Key": @"Value",
                                       @"Key2": @"Value2",
                                       @"Key3": @"Value3",
                                       @"Key4": @"Value4",
                                       @"2": @"3",
                                       @"4": @"6",
                                       @"x": @"y",
                                       @2: @"4"
                                       };
        NSLog(@"%@", myDictionary);
        
    }
    return 0;
}
