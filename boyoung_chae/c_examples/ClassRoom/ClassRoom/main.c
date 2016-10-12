//
//  main.c
//  ClassRoom
//
//  Created by Boyoung on 2016-09-01.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#include "Utilities.h"
#include "Student.h"
#include "Teacher.h"
#include "Mark.h"

int main(int argc, const char * argv[])
{
//    int *arrayInt = malloc(sizeof(int) * 4);
//    printf("Size of arrayInt %ld", sizeof(arrayInt));
//    free(arrayInt);
    
    Student *jorgeArdile = Student_new();
    jorgeArdile->name = "Jorge Ardila";
    jorgeArdile->age = 19;
    string descs[3] = {"C", "Obj-C", "Swift"};
    int value[3] = {6,7,8};
    Student_setMarks(jorgeArdile, descs, value);
    
    Student *xuming = Student_new();
    xuming->name = "Xuming";
    xuming->age = 19;
    int value2[3] = {10,5,6};
    Student_setMarks(xuming, descs, value2);
    
    Student *boyoung = Student_new();
    boyoung->name = "Bo Young";
    boyoung->age = 19;
    int value3[3] = {10,9,6};
    Student_setMarks(boyoung, descs, value3);
    
    Student *jorge = Student_new();
    jorge->name = "Jorge";
    jorge->age = 19;
    int value4[3] = {10,9,8};
    Student_setMarks(jorge, descs, value4);
    
    Teacher *luiz = Teacher_new();
    luiz->name = "Luiz";
    luiz->classRoomNumber = 115;
    Student *list[4];
    list[0] = jorgeArdile;
    list[1] = xuming;
    list[2] = boyoung;
    list[3] = jorge;
    luiz->listStudents = list;
    
//    printf("Student name is %s.\n", luiz->listStudents[0]->name);
    
    for (int i = 0 ; i < 4 ; i++)
    {
        printf("The student: %s got a grade: %c\n",
               luiz->listStudents[i]->name,
               Mark_getGrade(luiz->listStudents[i]->listMarks));
    }

    free(jorgeArdile);
    free(xuming);
    free(boyoung);
    free(jorge);
    free(luiz);
    
    return 0;
}