//
//  CICCCStudent.h
//  FirstClass
//
//  Created by CICCC1 on 2016-05-09.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#ifndef CICCCStudent_h
#define CICCCStudent_h

struct _CICCCStudent
{
    char *name;
    int age;
};

typedef struct _CICCCStudent CICCCStudent;

void CICCCStudent_setName(CICCCStudent *this, char *name);

#endif /* CICCCStudent_h */
