#include <stdio.h>
#include "year.h"


typedef char string[20];
typedef short dennisInt;
typedef double digbyFloat;

//yearFrom1970 myDate_setYear(int theYear);
//int myDate_getYear(yearFrom1970 theDate);

int main()
{
  string name;
  dennisInt favNum;
  digbyFloat divAnswer;
  int theYear;
   

  printf("Please type in your name: ");
  scanf("%s",name);

  printf("Please type in your favorite number: ");
  scanf("%hd",&favNum);

  printf("Please type in the answer to 3 divided by 2: ");
  scanf("%lf",&divAnswer);
  
  printf("Your name is %s, your favorite number is %d and your answer was %.12f \n", name, favNum, divAnswer);
  
  printf("what year is it now? ");
  scanf("%d",&theYear);
  
  yearFrom1970 currentYear = myDate_setYear(theYear);
  printf("You stated that the year is %d  /n", myDate_getYear(currentYear));
  
  
  
  
  
  return 0;
}
