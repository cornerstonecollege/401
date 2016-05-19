//
//  main.m
//  UsingCategories
//
//  Created by CICCC1 on 2016-05-19.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+NSObjectCategory.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSArray *array = @[@"Lemon", @"Banana", @"Kiwi"];
        NSLog(@"%@", [array toString]);
    }
    return 0;
}
