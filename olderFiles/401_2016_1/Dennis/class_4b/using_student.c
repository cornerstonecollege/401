#include<stdio.h>
#include "student.h"


int main()
{
  student student1;


  printf("what is your name? ");
  scanf("%s" , student1.name);
  printf("What is your age? ");
  scanf("%i", &(student1.age));
  printf("what is your grade? ");
  scanf("%i", &(student1.grade));

  printf("Your name is %s, Your age is %d, and your grade is %d", student1.name, student1.age, student1.grade);
 



  return 0;

}
