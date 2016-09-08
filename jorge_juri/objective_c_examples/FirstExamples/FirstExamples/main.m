//
//  main.m
//  FirstExamples
//
//  Created by Luiz on 2016-09-06.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
//        Student *student = Student_new();
//        student->name = "Luiz";
//        student->grade = 'A';
//        NSLog(@"The student name is %s", student->name);
//        Student_free(student);

        
        NSString *myString = @"This String";
        NSLog(@"container %p address %p value %@", &myString, myString, myString);
        myString = @"Second String";
        NSLog(@"container %p address %p value %@", &myString, myString, myString);
    }
    return 0;
}
