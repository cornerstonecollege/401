//
//  User.h
//  Ownership_User
//
//  Created by Boyoung on 2016-09-09.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (nonatomic, readonly) NSString *email;
@property (nonatomic, readwrite) NSString *name;
@property (nonatomic, weak) User *mother;

- (void) setData:(NSString *)password;
- (BOOL) checkPassword:(NSString *)password;

@end
