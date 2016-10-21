#include <stdio.h>
#include "Date.h"

int main()
{
  Date date;

  printf("Type the day: ");
  scanf("%i", &(date.day));

  printf("Type the month: ");
  scanf("%i", &(date.month));

  printf("Type the year: ");
  scanf("%ld", &(date.year));

  printf("The day is %d, the month is %d and the is %ld\n", date.day, date.month, date.year);

  printf("The size of the new type 'Date' is %lu\n", sizeof(Date));

  return 0;
}
