//
//  Student.h
//  FirstExamples
//
//  Created by Luiz on 2016-09-06.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#ifndef Student_h
#define Student_h

typedef char* string;

struct _Student{
    string name;
    char grade;
};

typedef struct _Student Student;
typedef Student* StudentRef;

StudentRef Student_new();
void Student_free(StudentRef this);

#endif /* Student_h */
