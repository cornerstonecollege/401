//
//  Marks.h
//  Classroom
//
//  Created by jorgelocal on 2016-09-01.
//  Copyright © 2016 jorgelocal. All rights reserved.
//

#ifndef Marks_h
#define Marks_h

#include "Marks.h"
#include "Utilities.h"


struct _Marks
{
    string description;
    int value;
};

typedef struct _Marks;


Marks* Marks_new();
char Mark_getGrade(Mark list[3]);


#endif /* Marks_h */
