//
//  main.m
//  ArraysAndDictionaries
//
//  Created by Boyoung on 2016-09-07.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
//        NSString *str = @"Luiz";
//        NSString *str2 = str;
//        
//        NSLog(@"%p %p", str, str2);
        
        NSArray *myArray = @[@1, @"Hi", @"Hello world"];
        NSMutableArray *mutableArray = [NSMutableArray arrayWithArray:myArray];
        [mutableArray addObject:@"New Object"];
        NSLog(@"%@", mutableArray);
        NSLog(@"%@", mutableArray[3]);
        
        NSDictionary *myDictionary = @{
                                       @"key" : @"Value",
                                       @"key2" : @"Value2",
                                       @"key3" : @"Value3",
                                       @"key4" : @"Value4",
                                       @"2" : @"3",
                                       @"4" : @"6",
                                       @"x" : @"y",
                                       @2: @"4",
                                       @3: @4
                                       };
        
        NSLog(@"%@", myDictionary);
        NSLog(@"%@", myDictionary[@"x"]);
        
        NSMutableDictionary *mutableDictionary = [NSMutableDictionary dictionary];
        [mutableDictionary setValue: @"Value Mutable" forKey: @"Key"];
        [mutableDictionary setValue: @"Value Mutable2" forKey: @"Key2"];
        [mutableDictionary setValue: @"Value Mutable3" forKey: @"Key3"];
        
        NSLog(@"%@", mutableDictionary[@"Key"]);
        
        [mutableDictionary enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
            NSLog(@"The key is %@ and the value is %@.", key, obj);
            *stop = YES;
        }];
    }
    return 0;
}
