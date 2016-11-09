//
//  User.m
//  Ownership_User
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
    _password = @"12345!";
    _email = @"email@email.com";
}

- (BOOL) checkPassword:(NSString *)password
{
    if ([password isEqualToString:self.password])
    {
        return true;
    }
    
    else
        return false;
}


- (NSString *)description
{
    return [NSString stringWithFormat:@"\nName: %@\nPassword: %@\nEmail: %@\nMother: %@", self.name, self.password, self.email, self.mother.name];
}

@end
