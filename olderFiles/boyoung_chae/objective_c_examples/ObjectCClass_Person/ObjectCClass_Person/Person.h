//
//  Person.h
//  ObjectCClass_Person
//
//  Created by Boyoung on 2016-09-07.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property NSString *name;
@property NSInteger age;
@property NSString *nationality;

- (instancetype) initName:(NSString *)name andAge:(NSInteger) age andNationality:(NSString *)nationality;

@end
