//
//  Mark.c
//  ClassRoom
//
//  Created by Luiz on 2016-09-01.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#include "Mark.h"

Mark* Mark_new()
{
    return malloc(sizeof(Mark));
}

char Mark_getGrade(Mark list[3])
{
    int sum = 0;
    for (int i = 0; i < 3; i++)
    {
        sum = sum + list[i].value;
    }
    
    double avarage = sum / 3;
    
    if (avarage >= 9)
    {
        return 'A';
    }
    else if (avarage >= 8)
    {
        return 'B';
    }
    else if (avarage >= 7)
    {
        return 'C';
    }
    else
    {
        return 'F';
    }
}