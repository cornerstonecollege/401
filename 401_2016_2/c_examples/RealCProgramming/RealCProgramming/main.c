//
//  main.c
//  RealCProgramming
//
//  Created by Luiz on 2016-08-31.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#include <stdio.h>
#include "Calculator.h"
#include "Student.h"

int main(int argc, const char * argv[])
{
    Student *student1 = Student_new();
    Student *student2 = Student_new();
    
    Student_setName(student1, "Luiz");
    student1->age = 26;
    student1->grade = 'A';
    
    student2->name = "Chris";
    student2->age = 19;
    student2->grade = 'A';
    
    printf("The sum of ages is %i\n", Calculator_add(student1->age, student2->age));
    
    return 0;
}
