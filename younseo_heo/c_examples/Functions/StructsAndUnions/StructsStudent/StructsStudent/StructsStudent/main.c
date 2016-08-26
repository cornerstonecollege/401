//
//  main.c
//  StructsStudent
//
//  Created by younseolocal on 2016-08-25.
//  Copyright © 2016 younseolocal. All rights reserved.
//

#include <stdio.h>

typedef char string[20];

void result(int grade, string name);

struct _Student
{
    string name;
    int age;
    int grade;
};

// Prototype of function
typedef struct _Student Student;

int main()
{
    // insert code here...
    Student student;
    printf("Enter a student name.\n");
    scanf("%s", student.name);
    printf("\nEnter %s\'s age.\n", student.name);
    scanf("%i", &student.age);
    printf("\nEnter %s\'s grades.\n", student.name);
    scanf("%i", &student.grade);
    printf("\nThe size of the struct is %ld\n", sizeof(Student));
    
    // Call a function
    result(student.grade, student.name);
    
    return 0;
}

void result(int grade, string name)
{
    if (grade >= 7)
    {
        printf("\n================================\n");
        printf("%s passed this course!\n", name);
        printf("================================\n");
    }
    else if (grade < 7)
    {
        printf("\n================================\n");
        printf("%s failed this course!\n", name);
        printf("================================\n");
    }
}
