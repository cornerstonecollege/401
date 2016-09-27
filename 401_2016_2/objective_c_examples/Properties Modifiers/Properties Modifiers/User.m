//
//  User.m
//  Properties Modifiers
//
//  Created by Luiz on 2016-09-08.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
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
