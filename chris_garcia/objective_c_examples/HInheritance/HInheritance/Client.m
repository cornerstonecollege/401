//
//  Client.m
//  HInheritance
//
//  Created by Christian on 2016-09-12.
//  Copyright © 2016 Christian. All rights reserved.
//

#import "Client.h"

@implementation Client

// the method below is required
- (void)login
{
    NSLog(@"User did log login");
}

// The method below is optional
- (void)changPassword:(NSString *)password
{
    NSLog(@"new password %@", password);
}

- (void) createPassword:(NSString *)password
{
    NSLog(@"password created %@", password);
}

@end