//
//  main.m
//  Ownership_User
//
//  Created by Boyoung on 2016-09-09.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        User *user = [[User alloc] init];
        [user setName:@"June"];
        [user setData:@""];


        User *mother1 = [[User alloc] init];
        [mother1 setName:@"July"];
        
        [user setMother:mother1];
        
        NSLog(@"%@", user);
    }
    return 0;
}
