//
//  Student.c
//  FirstExamples
//
//  Created by younseolocal on 2016-09-06.
//  Copyright © 2016 younseolocal. All rights reserved.
//
#include <stdlib.h>
#include "Student.h"

Student* Student_new()
{
    return malloc(sizeof(Student));
}

void Student_free(Student* this)
{
    free(this);
}