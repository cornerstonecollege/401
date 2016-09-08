//
//  Student.c
//  FirstExamples
//
//  Created by Luiz on 2016-09-06.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#include <stdlib.h>
#include "Student.h"

StudentRef Student_new()
{
    return malloc(sizeof(Student));
}

void Student_free(StudentRef this)
{
    free(this);
}
