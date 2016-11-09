//
//  Mark.h
//  Classrooms
//
//  Created by Nicholas on 2016-09-01.
//  Copyright © 2016 Nicholas. All rights reserved.
//

#ifndef Mark_h
#define Mark_h

#include "Utilities.h"

// Creating the Mark

struct _Mark
{
    string description;
    int value;
    
};

typedef struct _Mark Mark;


//

Mark* Mark_new();
char Mark_getGrade(Mark *list);

#endif /* Mark_h */
