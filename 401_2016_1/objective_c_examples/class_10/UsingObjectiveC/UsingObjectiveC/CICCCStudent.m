//
//  CICCCStudent.m
//  UsingObjectiveC
//
//  Created by CICCC1 on 2016-05-09.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import "CICCCStudent.h"

@interface CICCCStudent ()

// the external world can't see it
@property (nonatomic) char grade;

@end

@implementation CICCCStudent

- (NSString *)description
{
    return [NSString stringWithFormat:@"Student name: %@ age:%lu", self.name, self.age];
}

@end
