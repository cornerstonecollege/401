//
//  User.m
//  PropertiesModifiers
//
//  Created by Boyoung on 2016-09-08.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import "User.h"

@implementation User

- (void) setTheLogin:(NSString *)login
{
    _login = login;
    _password = @"123456";
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Name:%@, Password:%@", self.login, self.password];
}

@end
