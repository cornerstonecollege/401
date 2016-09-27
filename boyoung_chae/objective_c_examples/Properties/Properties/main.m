//
//  main.m
//  Properties
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
        [user setLogin:@"Luizperes"];
        [user login];
        
        [user setEmail:@"luiz_ahah@gmail.com"];
        
//        user.email = @"the email";
        
        NSLog(@"%@", user);
    }
    return 0;
}
