//
//  User.m
//  Properties
//
//  Created by Luiz on 2016-09-08.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import "User.h"

@interface User ()

@property (nonatomic)  NSString *password;

@end

@implementation User

- (void) exampleMethod
{
    _email = @"the nice email";
    
    self.email = @"the nice email";
}

- (void) setEmail:(NSString *)email
{
    _password = @"123456";
    _email = email;
}

@end
