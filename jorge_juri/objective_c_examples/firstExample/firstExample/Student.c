//
//  Student.c
//  firstExample
//
//  Created by jjuri2 on 2016-09-06.
//  Copyright © 2016 jjuri2. All rights reserved.
//

#include <stdlib.h>
#include "Student.h"

typedef void* myFunction();


Student* Student_new()
{
    return malloc(sizeof(Student));
    
}

void Student_free(Student* this)
{
    free(this); // para liberar la memoria
}
