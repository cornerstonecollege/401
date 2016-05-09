//
//  main.m
//  FirstClass
//
//  Created by CICCC1 on 2016-05-09.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CICCCStudent.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        CICCCStudent student;
        student.age = 21;
        CICCCStudent_setName(&student, "Luiz dsgusfhuids");
        
        NSObject *obj = [[NSObject alloc] init];
        NSLog(@"%@ %s", obj, student.name);
    }
    return 0;
}