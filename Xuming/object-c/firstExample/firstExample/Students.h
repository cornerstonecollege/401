//
//  Students.h
//  firstExample
//
//  Created by Nicholas on 2016-09-06.
//  Copyright © 2016 Nicholas. All rights reserved.
//

#ifndef Students_h
#define Students_h

typedef char* string;

struct _Student{
    string name;
    char grade;
};


typedef  struct _Student student;

student* Student_new();

#endif /* Students_h */
