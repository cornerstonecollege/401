#include <stdio.h>
#include "years.h"

typedef char  string[20];
typedef short  dennisInt;
typedef float digbyFloat;


//this type is declared inside your years.h
//typedef char yearFrom1970
//yearFrom1970 setYear(int theYear);
//int getYear(yearFrom1970 theDate);

int main()
{
  string myString;
  dennisInt myInt;
  digbyFloat myFloat;
  int theYear;
  printf("enter your string: \n");
  scanf("%s", myString);
  printf("enter your number: \n");
  scanf("%hd" , &myInt);
  printf("enter your number: \n");
  scanf("%f", &myFloat);

  printf("what year is it now?\n");
  scanf("%d", &theYear);
  yearFrom1970 currentYear = MyDate_setYear(theYear);
  printf("you stated the year is %d \n",MyDate_getYear(currentYear));
  
  
  return 0;

}
