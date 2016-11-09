//
//  User.m
//  PropertiesModifiers
//
//  Created by Christian on 2016-09-09.
//  Copyright © 2016 Christian. All rights reserved.
//

#import "User.h"

@implementation User

- (void)setTheLogin:(NSString *)login
{
    _login = login;
    _password = @"123456";
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Login: %@ Password: %@", self.login, self.password];
}

@end