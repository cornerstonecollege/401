//
//  User.m
//  Ownership_UserLogin
//
//  Created by Boyoung on 2016-09-09.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import "User.h"

@interface User ()

@property (nonatomic) NSString *password; // private

@end

@implementation User

- (void) setData:(NSString *)password
{
    _password = @"12345";
    _email = @"aaa@aaa.com";
}

- (BOOL) checkEmail: (NSString *)email andPassword: (NSString *)password
{
    if ([email isEqualToString: self.email] && [password isEqualToString:self.password])
    {
        return true;
    }
    
    else
    {
        return false;
    }
}


- (NSString *)description
{
    return [NSString stringWithFormat:@"\n-----------------------\n<Welcome! %@>\nName: %@\nPassword: %@\nEmail: %@", self.name, self.name, self.password, self.email];
}


@end
