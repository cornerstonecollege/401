//
//  Teacher.h
//  ClassRoom
//
//  Created by Luiz on 2016-09-01.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#ifndef Teacher_h
#define Teacher_h

#include "Utilities.h"
#include "Student.h"

// creates Teacher

struct _Teacher
{
    string name;
    int classRoomN;
    Student **listStudents;
};

typedef struct _Teacher Teacher;

// Function Prototypes

Teacher* Teacher_new();

#endif /* Teacher_h */
