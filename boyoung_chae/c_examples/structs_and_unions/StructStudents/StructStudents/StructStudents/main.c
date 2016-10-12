//
//  main.c
//  StructStudents
//
//  Created by Boyoung on 2016-08-25.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#include <stdio.h>

typedef char string[20];

struct _Student
{
    string name;
    int age;
    int grade;
};

typedef struct _Student Student;

int main() {
    Student student;
    
    printf("1. Write the student's name and age: ");
    scanf("%s %i", student.name, &student.age);
    printf("2. Insert the student's grade(1~10): ");
    scanf("%i", &student.grade);
    
    printf("===== PASS / FAIL =====\n");
    if (student.grade >= 7)
    {
        printf("%s(age: %i) passed!! Grade %i.\n", student.name, student.age, student.grade);
    }
    
    else if (student.grade < 7)
    {
        printf("%s(age: %i) failed. Grade %i. Sorry.\n", student.name, student.age, student.grade);
    }
    
    return 0;
}
