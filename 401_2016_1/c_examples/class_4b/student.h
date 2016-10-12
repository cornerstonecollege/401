#ifndef STUDENT_H
#define STUDENT_H

typedef char* string;

struct _student
{
  string name;
  int age;
  int grade;
};

typedef struct _student student;

#endif
