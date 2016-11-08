//
//  Person.h
//  PropertiesModifiers_Person
//
//  Created by Boyoung on 2016-09-08.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, readonly) NSInteger identity;
@property (nonatomic, setter=setTheValue:) NSString *nationality;

// NSInteger is not an object. (@ is not used.)
// NSNumber is an object. (@ is used.)

@end
