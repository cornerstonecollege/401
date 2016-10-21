//
//  Mark.h
//  ClassRoom
//
//  Created by Luiz on 2016-09-01.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
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

// function prototypes

Mark* Mark_new();
char Mark_getGrade(Mark list[3]);


#endif /* Mark_h */
