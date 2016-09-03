//
//  Student.h
//  objeto_C
//
//  Created by jorge on 2016-08-30.
//  Copyright © 2016 jorge. All rights reserved.
//

#ifndef Student_h
#define Student_h

#include <stdio.h>

typedef char*string;

struct _Student  // asi se le llama a una clase en C
{
    string name;
    int age;
    char grade;

};

typedef struct _Student Student;

// prototype of funcion

Student* Student_new();
void Student_setName(Student *this,string name);




#endif /* Student_h */
