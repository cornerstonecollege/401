//
//  main.m
//  UsingNSString
//
//  Created by CICCC1 on 2016-05-10.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSString *name = @"digby";
        __unused NSString *name2 = [NSString string];
        
        NSLog(@"%@", [name uppercaseString]);
    }
    return 0;
}
