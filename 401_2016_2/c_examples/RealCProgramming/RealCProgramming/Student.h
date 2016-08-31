//
//  Student.h
//  RealCProgramming
//
//  Created by Luiz on 2016-08-31.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#ifndef Student_h
#define Student_h

typedef char* string;

struct _Student
{
    string name;
    int age;
    char grade;
};

typedef struct _Student Student;

Student* Student_new();
void Student_setName(Student *this, string name);

#endif /* Student_h */
