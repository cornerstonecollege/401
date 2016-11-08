//
//  main.c
//  StructMalloc
//
//  Created by younseolocal on 2016-08-29.
//  Copyright © 2016 younseolocal. All rights reserved.
//

#include <stdio.h>

typedef char* string;
struct _Student
{
    string name;
    int age;
    char grade;
};

typedef struct _Student Student;

string new_string(int bytes);
Student* new_student();

int main(int argc, const char * argv[])
{
    Student myStudent;
    
    return 0;
}

string new_string(int bytes)
{
    return (string) malloc(bytes);
}

Student* new_student()
{
    return (Student *) malloc(sizeof(Student));
}