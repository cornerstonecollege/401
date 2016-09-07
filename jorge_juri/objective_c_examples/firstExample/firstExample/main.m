//
//  main.m
//  firstExample
//
//  Created by jjuri2 on 2016-09-06.
//  Copyright © 2016 jjuri2. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    
    
    @autoreleasepool {
        
        //Student *student=Student_new();
        //student->name="Luiz";
        //student->grade='A';
        //NSLog(@"The student name is %s", student->name);
        //Student_free(student);
        
        
        
       // __unused NSString *myString=@"This String";

       //  NSString *myString=@"This String"; // adress of my contenir
       // NSLog(@"%@",myString.description);
       // NSLog(@"%p",myString);
        //  NSLog(@"%p",&myString);
        
        
        
        NSString *myString=@"This String"; // adress of my contenir
        NSLog(@"Container %p addresss %p value %@",&myString,myString,myString);
        myString=@"Second String";
        NSLog(@"Container %p addresss %p value %@",&myString,myString,myString);
         }
    return 0;
}
