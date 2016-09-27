//
//  Client.h
//  horizontalInheritance
//
//  Created by Boyoung on 2016-09-12.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol LoginProtocol

@required
- (void) login;

@optional
- (void) changePassword: (NSString *) password;

@end


@interface Client : NSObject <LoginProtocol>

- (void) createPassword:(NSString *)password;

@end
