#include "Student.h"
#include <stdio.h>

int main()
{
  Student student;

  printf("Please enter your name: ");
  scanf("%s",(student.name));

  printf("Please enter your age: ");
  scanf("%d",&(student.age));

  printf("Please enter your grade: ");
  scanf("%d",&(student.grade));
  
  printf("The students info:\n Name: %s \n Age: %d \n Grade: %d \n", student.name, student.age, student.grade);

  return 0;
}
