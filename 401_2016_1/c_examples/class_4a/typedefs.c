#include <stdio.h>
#include "year.h"

typedef char string[20];
typedef short dennisInt;
typedef float digbyFloat;

// this type is declared inside year.h
// typedef char yearFrom1970;
// yearFrom1970 MyDate_setYear(int theYear);
// int MyDate_getYear(yearFrom1970 theDate);

int main()
{
  // get and print the string out
  // get and print the int out
  // get and print the float out

  int theYear;
  printf("What year is it now? ");
  scanf("%d", &theYear);

  yearFrom1970 currentYear = MyDate_setYear(theYear);
  printf("You stated that is: %d\n", MyDate_getYear(currentYear));

  return 0;
}
