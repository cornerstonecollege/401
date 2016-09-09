//
//  main.m
//  PropertiesModifiers
//
//  Created by Boyoung on 2016-09-08.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        User *user = [[User alloc] init];
        user.login = @"luizpers";
        
        NSLog(@"%@", user);
    }
    return 0;
}
