//
//  main.m
//  Student
//
//  Created by Nicholas on 2016-09-08.
//  Copyright © 2016 Nicholas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Student *s = [[Student alloc] init];
        s.age = 1;
        s.weight = 2.0;
        [s eat];
        
    }
    return 0;
}
