//
//  User.h
//  PropertiesModifiers
//
//  Created by Boyoung on 2016-09-08.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, readonly) NSString *password;
@property (nonatomic, setter=setTheLogin:) NSString *login;

@end
