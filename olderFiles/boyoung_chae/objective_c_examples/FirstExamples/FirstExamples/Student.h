//
//  Student.h
//  FirstExamples
//
//  Created by Boyoung on 2016-09-06.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#ifndef Student_h
#define Student_h

typedef char* string;

struct _Student
{
    string name;
    char grade;
};

typedef struct _Student Student;
typedef Student* StudentRef;

//Student* Student_new();
StudentRef Student_new();
void Student_free(Student* this);

#endif /* Student_h */
