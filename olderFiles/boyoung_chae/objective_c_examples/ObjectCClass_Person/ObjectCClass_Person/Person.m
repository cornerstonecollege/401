//
//  Person.m
//  ObjectCClass_Person
//
//  Created by Boyoung on 2016-09-07.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import "Person.h"

@implementation Person


// Constructor

- (instancetype) initName:(NSString *)name andAge:(NSInteger) age andNationality:(NSString *)nationality
{
    self = [super init];
    
    if (self)
    {
        self.name = name;
        self.age = age;
        self.nationality = nationality;
    }
    
    return self;
}

- (NSString *) description
{
    return [NSString stringWithFormat:@"Name:%@, Age:%lu, Nationality:%@", self.name, self.age, self.nationality];
}

@end
