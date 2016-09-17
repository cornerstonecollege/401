//
//  main.m
//  Excercise_2
//
//  Created by Christian on 2016-09-16.
//  Copyright © 2016 Christian. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *arrayList = @[ @"Strin1", @"String2", @"String23"];
        NSMutableArray *mutableArray = [NSMutableArray arrayWithArray:arrayList];
        [mutableArray addObject:@"String4"];
        [mutableArray addObject:@"String5"];
        NSLog(@"%@", mutableArray[0]);
        NSLog(@"%@", mutableArray[4]);    }
    return 0;
}
