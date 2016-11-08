//
//  main.m
//  usingNSString
//
//  Created by Digby Andrews on 2016-05-10.
//  Copyright © 2016 Digby Andrews. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        NSString *name = @"Digby";
        NSString *lastName = @"Andrews";
        NSInteger age = 26;
        NSLog(@"My Full name is %@ %@ and I am %ld years old",[name uppercaseString], lastName, (long)age);
    }
    return 0;
}
