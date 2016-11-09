//
//  main.c
//  student
//
//  Created by jjuri2 on 2016-08-25.
//  Copyright © 2016 jjuri2. All rights reserved.
//

#include <stdio.h>
typedef char string[20];


struct _Student
{
    string name;
    int age,grade;
};


typedef struct _Student Student;


int main() {
    //struct Person person;
    Student student;

    
printf("insert name of student");
    scanf("%s",student.name);
    printf("%p", student.name);

    printf("insert age of student");
    scanf("%i",&student.age);

    printf("insert grade of student");
    scanf("%i",&student.grade);


    
     // insert code here...
    printf("The name is  %s and the age is %i a your grade is %i \n", student.name,student.age,student.grade);

    
       
    
    printf("Hello, World!\n");
    return 0;
}
