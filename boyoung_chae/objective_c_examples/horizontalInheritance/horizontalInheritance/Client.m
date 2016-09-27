//
//  Client.m
//  horizontalInheritance
//
//  Created by Boyoung on 2016-09-12.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import "Client.h"

@implementation Client

// The method below is required.
- (void)login
{
    NSLog(@"User did log login");
}

// The method below is optional.
- (void) changePassword:(NSString *)password
{
    NSLog(@"new password %@", password);
}

- (void) createPassword: (NSString *)password
{
    NSLog(@"password created %@", password);
}

@end
