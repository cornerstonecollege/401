//
//  Students.c
//  firstExample
//
//  Created by Nicholas on 2016-09-06.
//  Copyright © 2016 Nicholas. All rights reserved.
//

#include "Students.h"

student* Student_new()
{
    return malloc(sizeof(student));
}

void student