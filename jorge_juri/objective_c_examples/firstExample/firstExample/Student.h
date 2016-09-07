//
//  Student.h
//  firstExample
//
//  Created by jjuri2 on 2016-09-06.
//  Copyright © 2016 jjuri2. All rights reserved.
//

#ifndef Student_h
#define Student_h

typedef char*string;

struct _Student{
    string name;
    char grade;
};

typedef struct _Student Student;
Student* Student_new();

void Student_free(Student* this);





#endif /* Student_h */
