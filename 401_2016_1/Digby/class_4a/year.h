#ifndef YEAR_H
#define YEAR_H

typedef char yearFrom1970;

// if the user passes 1972 as an argument, then
// the value will be 2.
yearFrom1970 myDate_setYear(int theYear);

// if the users passes 2 as an argument, then
// the value will be 1972.
int myDate_getYear(yearFrom1970 theDate);

#endif
