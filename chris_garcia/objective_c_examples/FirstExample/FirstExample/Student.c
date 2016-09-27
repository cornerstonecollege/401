//
//  Student.c
//  FirstExample
//
//  Created by Christian on 2016-09-06.
//  Copyright © 2016 Christian. All rights reserved.
//

#include "Student.h"
#include <stdlib.h>

StudentRef Student_new()
{
    return malloc (sizeof(Student));
}

void Student_free(StudentRef this)
{
    free(this);
}
