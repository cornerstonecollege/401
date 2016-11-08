//
//  Student.h
//  ClassRoom
//
//  Created by Boyoung on 2016-09-01.
//  Copyright © 2016 Boyoung. All rights reserved.
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

// Function prototypes

Student* Student_new();
void Student_setMarks(Student *this, string desc[3], int value[3]);

#endif /* Student_h */
