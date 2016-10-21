//
//  main.m
//  UsingCatagory
//
//  Created by Dennis Pham on 2016-05-19.
//  Copyright © 2016 Dennis Pham. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+NSObjectCategory.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSArray *array = @[@"lemon", @"banana", @"kiwi"];
                        NSLog(@"%@", [array toString]);
    }
    return 0;
}
