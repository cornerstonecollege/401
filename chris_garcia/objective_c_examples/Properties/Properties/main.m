//
//  main.m
//  Properties
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
        [user setLogin:@"luizperes"];
        [user login];
        
        [user setEmail:@"luiz_ahah@gmail.com"];
        
        user.email = @"the email";
        user.login = user.email;
    }
    return 0;
}