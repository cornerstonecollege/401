//
//  main.c
//  StructAndStudent
//
//  Created by Nicholas on 2016-08-25.
//  Copyright © 2016 Nicholas. All rights reserved.
//

#include <stdio.h>

typedef char* string;

struct _Student{
    string name;
    int grade;
    int age;
};

typedef struct _Student student;

int main() {
    
    student student;
    student.name = "Nicholas";
    student.grade = 4;
    student.age = 18;
    
    printf("The name is %s and the grade is %i the age is %i\n", student.name,student.grade,student.age);
    printf("The size of the struct is %ld\n", sizeof(student));
    return 0;
}
