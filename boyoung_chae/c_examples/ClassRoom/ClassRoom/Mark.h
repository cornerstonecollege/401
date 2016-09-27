//
//  Mark.h
//  ClassRoom
//
//  Created by Boyoung on 2016-09-01.
//  Copyright © 2016 Boyoung. All rights reserved.
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

// Function prototypes

Mark* Mark_new();
char Mark_getGrade(Mark list[3]);

#endif /* Makr_h */