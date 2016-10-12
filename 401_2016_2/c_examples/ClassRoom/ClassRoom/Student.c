//
//  Student.c
//  ClassRoom
//
//  Created by Luiz on 2016-09-01.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#include "Student.h"

Student* Student_new()
{
    return malloc(sizeof(Student));
}

void Student_setMarks(Student *this, string desc[3], int value[3])
{
    for (int i = 0; i < 3; i++)
    {
        this->listMarks[i].description = desc[i];
        this->listMarks[i].value = value[i];
    }
}