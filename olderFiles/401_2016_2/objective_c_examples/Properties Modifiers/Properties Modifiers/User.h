//
//  User.h
//  Properties Modifiers
//
//  Created by Luiz on 2016-09-08.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (nonatomic, copy) NSString *email;
@property (nonatomic, readonly) NSString *password;
@property (nonatomic, setter=setTheLogin:) NSString *login;

@end
