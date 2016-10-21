#include "year.h"

yearFrom1970 MyDate_setYear(int theYear)
{
  if (theYear < 1970 || theYear > (1970 + 255))
  {
    return 0;
  }

  return theYear - 1970;
}

int MyDate_getYear(yearFrom1970 theDate)
{
  return theDate + 1970;
}
