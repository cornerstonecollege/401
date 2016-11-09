//
//  main.m
//  firstExample
//
//  Created by Nicholas on 2016-09-06.
//  Copyright © 2016 Nicholas. All rights reserved.
//

#import <Foundation/Foundation.h>
*import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        student *student = Student_new();
        student->NameTable = "Lui",
        student->grade = 'A';
        nSLog(@"The student name is %s", student->NameTable)
    
    }
    return 0;
}
