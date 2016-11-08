//
//  User.m
//  Properties
//
//  Created by Boyoung on 2016-09-08.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import "User.h"

@interface User ()

@property (nonatomic) NSString *password;

@end

@implementation User

- (void) giveMeTheLogin
{
    _email = @"the nice email";
    
//    self.email = @"the nice email";
}

- (void) setEmail:(NSString *)email
{
    // perform graphic to show up
    _email = email;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@", self.email];
}

@end
