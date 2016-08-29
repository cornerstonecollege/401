//
//  main.c
//  StructMalloc
//
//  Created by Luiz on 2016-08-29.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>


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
    Student *myStudent = new_student();
    myStudent->name = "Luiz";
    myStudent->age = 26;
    myStudent->grade = 'F';
    
    printf("Name: %s Age: %i Grade %c\n", myStudent->name, myStudent->age, myStudent->grade);
    free(myStudent);
    
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
