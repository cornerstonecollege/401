#include <stdio.h>
#include "Date.h"

int main()
{
  Date date;
  int day;
  int month;
  
  printf("Type the day: ");
  scanf("%i", &day);

  printf("Type the month: ");
  scanf("%i", &month);

  date.day = (char)day;
  date.month = (char)month;

  printf("Type the year: ");
  scanf("%ld", &date.year);

  printf("The day is %d, the month is %d, the year is %ld,\n", date.day, date.month, date.year);
    
  printf("The size of the new type 'Date' is %lu\n", sizeof(Date));
  
  return 0;
}





