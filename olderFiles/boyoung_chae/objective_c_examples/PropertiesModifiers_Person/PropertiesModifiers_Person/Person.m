//
//  Person.m
//  PropertiesModifiers_Person
//
//  Created by Boyoung on 2016-09-08.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void) setTheValue:(NSString *)nationality
{
    _nationality = nationality;
    _identity = 123;
}

// NSInteger is not an object. (@ is not used.)
// NSNumber is an object. (@ is used.)

- (NSString *)description
{
    return [NSString stringWithFormat:@"\nName: %@, ID: %lu, Nationality: %@", self.name, self.identity, self.nationality];
}

@end
