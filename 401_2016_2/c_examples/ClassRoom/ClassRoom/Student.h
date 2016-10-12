//
//  Student.h
//  ClassRoom
//
//  Created by Luiz on 2016-09-01.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#ifndef Student_h
#define Student_h

#include "Utilities.h"
#include "Mark.h"

// Creates Student

struct _Student
{
    string name;
    Mark listMarks[3];
    int age;
};

typedef struct _Student Student;

// Function Prototypes

Student* Student_new();
void Student_setMarks(Student *this, string desc[3], int value[3]);

#endif /* Student_h */
