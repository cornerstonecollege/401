//
//  Student.c
//  FirstExamples
//
//  Created by Boyoung on 2016-09-06.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#include <stdlib.h>
#include "Student.h"

//Student* Student_new()
//{
//    return malloc(sizeof(Student));
//}

StudentRef Student_new()
{
    return malloc(sizeof(Student));
}

void Student_free(Student* this)
{
    free(this);
}