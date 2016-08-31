//
//  Student.c
//  RealCProgramming
//
//  Created by Luiz on 2016-08-31.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#include <stdlib.h>
#include "Student.h"

Student* Student_new()
{
    return malloc(sizeof(Student));
}

void Student_setName(Student *this, string name)
{
    this->name = name;
}