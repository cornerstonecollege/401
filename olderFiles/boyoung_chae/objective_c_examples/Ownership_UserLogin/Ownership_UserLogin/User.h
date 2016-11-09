//
//  User.h
//  Ownership_UserLogin
//
//  Created by Boyoung on 2016-09-09.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (nonatomic, readonly) NSString *email;
@property (nonatomic, readwrite) NSString *name;
@property (nonatomic, readwrite) NSInteger teamCode;
@property (nonatomic) NSMutableArray<User *> *teamMember;

- (void) setData:(NSString *)password;
- (BOOL) checkEmail: (NSString *)email andPassword: (NSString *)password;

@end
