//
//  main.m
//  UsingObjectiveC
//
//  Created by CICCC1 on 2016-05-09.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CICCCStudent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        CICCCStudent *student = [[CICCCStudent alloc] init];
        student.name = @"Luiz";
        student.age = 26;
        
        NSLog(@"%@", student);
    }
    return 0;
}
