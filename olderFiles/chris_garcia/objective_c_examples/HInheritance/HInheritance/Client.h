//
//  Client.h
//  HInheritance
//
//  Created by Christian on 2016-09-12.
//  Copyright © 2016 Christian. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol LoginProtocol

@required
- (void) login;

@optional
- (void) changPassword:(NSString *)password;

@end

@interface Client : NSObject <LoginProtocol>

- (void) createPassword:(NSString *)password;

@end