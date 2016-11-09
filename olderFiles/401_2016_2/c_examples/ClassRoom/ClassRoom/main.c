//
//  main.c
//  ClassRoom
//
//  Created by Luiz on 2016-09-01.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#include "Utilities.h"
#include "Student.h"
#include "Teacher.h"
#include "Mark.h"

int main(int argc, const char * argv[])
{
    Student *jorgeArdila = Student_new();
    jorgeArdila->name = "Jorge Ardila";
    jorgeArdila->age = 19;
    string descs[3] = {"C", "Obj-C", "Swift"};
    int values[3] = {10, 7 ,8};
    Student_setMarks(jorgeArdila, descs, values);
    
    Student *xuming = Student_new();
    xuming->name = "Xuming";
    xuming->age = 19;
    int values2[3] = {10, 5, 6};
    Student_setMarks(xuming, descs, values2);
    
    Student *boyoung = Student_new();
    boyoung->name = "Bo Young";
    boyoung->age = 19;
    int values3[3] = {10, 9, 6};
    Student_setMarks(boyoung, descs, values3);
    
    Student *jorge = Student_new();
    jorge->name = "Jorge";
    jorge->age = 19;
    int values4[3] = {10, 9, 8};
    Student_setMarks(jorge, descs, values4);
    
    Teacher *luiz = Teacher_new();
    luiz->name = "Luiz";
    luiz->classRoomN = 115;
    Student *list[4];
    list[0] = jorge;
    list[1] = jorgeArdila;
    list[2] = boyoung;
    list[3] = xuming;
    luiz->listStudents = list;
    
    for (int i = 0; i < 4; i++)
    {
        printf("The student: %s got a grade: %c\n",
               luiz->listStudents[i]->name,
               Mark_getGrade(luiz->listStudents[i]->listMarks));
    }
    
    free(jorge);
    free(jorgeArdila);
    free(xuming);
    free(boyoung);
    free(luiz);
    
    return 0;
}
