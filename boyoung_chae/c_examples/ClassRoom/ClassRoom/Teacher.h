//
//  Teacher.h
//  ClassRoom
//
//  Created by Boyoung on 2016-09-01.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#ifndef Teacher_h
#define Teacher_h

#include "Utilities.h"
#include "Student.h"

// Creates Teacher

struct _Teacher
{
    string name;
    int classRoomNumber;
    Student **listStudents;
};

typedef struct _Teacher Teacher;

// Function Prototypes

Teacher* Teacher_new();

#endif /* Teacher_h */
