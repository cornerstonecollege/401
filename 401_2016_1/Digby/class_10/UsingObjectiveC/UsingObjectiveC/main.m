//
//  main.m
//  UsingObjectiveC
//
//  Created by Digby Andrews on 2016-05-09.
//  Copyright © 2016 Digby Andrews. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CICCCStudents.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        CICCCStudents *student = nil;
        [student setName:@"Digby"];
        
        NSLog(@"%@", student.name);
    }
    return 0;
}
