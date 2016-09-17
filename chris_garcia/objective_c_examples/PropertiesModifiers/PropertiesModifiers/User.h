//
//  User.h
//  PropertiesModifiers
//
//  Created by Christian on 2016-09-09.
//  Copyright © 2016 Christian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (nonatomic, copy) NSString *email;
@property (nonatomic, readonly) NSString *password;
@property (nonatomic, setter=setTheLogin:) NSString *login;

@end