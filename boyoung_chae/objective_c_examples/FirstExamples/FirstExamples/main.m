//
//  main.m
//  FirstExamples
//
//  Created by Boyoung on 2016-09-06.
//  Copyright © 2016 Boyoung. All rights reserved.
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
//        NSLog(@"The student name is %s.", student->name);
//        Student_free(student);
    
        NSString *myString = @"This String"; //myString is a container.
        NSLog(@"container %p address %p value %@", &myString, myString, myString); //&myString is an address of the container.
        
        myString = @"Second String";
        NSLog(@"container %p address %p value %@", &myString, myString, myString);
        
        // The container is not changed.
        // The pointer of the container was changed.
    }
    return 0;
}