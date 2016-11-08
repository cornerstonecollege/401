#include <stdio.h>
#include "Date.h"


int main()
{
  Date date;
  int day;
  int month;

  printf("Please type the day: ");
  scanf("%i", &day);

  printf("Please type the month: ");
  scanf("%i", &month);

  date.day = (char)day;
  date.month =(char)month;

  printf("please type the year: ");
  scanf("%ld", &date.year);

  printf("The day is %d, the month is %d, the year is %ld\n", date.day, date.month, date.year);
  printf("The size of the new type 'Date' is %lu \n", sizeof(Date));
  return 0;
}
