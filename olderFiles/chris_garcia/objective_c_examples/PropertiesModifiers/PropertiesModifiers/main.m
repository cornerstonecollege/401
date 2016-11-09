//
//  main.m
//  PropertiesModifiers
//
//  Created by Christian on 2016-09-09.
//  Copyright © 2016 Christian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        User *user = [[User alloc] init];
        user.login = @"luizperes";
        
        NSLog(@"%@", user);
    }
    return 0;
}