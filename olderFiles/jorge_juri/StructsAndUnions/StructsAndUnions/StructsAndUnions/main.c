//
//  main.c
//  StructsAndUnions
//
//  Created by jjuri2 on 2016-08-25.
//  Copyright © 2016 jjuri2. All rights reserved.
//

#include <stdio.h>

typedef char* string;


struct _Student
{
    string name;
    int age,grade;
};

    //struct Person person;
    Student student;


    
    student.name="jorge";
    
    student.age= 18;

    student.grade= 1;
    
    
    
    
    // insert code here...
   printf("The name is %s and the age is %i a your grade is %i \n", student.name, student.age,student.grade);
typedef struct _Student Student;


int main() {


    
   printf("The size of the struct is %ld\n",sizeof(Student));
    return 0;
}
