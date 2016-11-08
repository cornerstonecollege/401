//
//  main.m
//  Properties
//
//  Created by Luiz on 2016-09-08.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
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
