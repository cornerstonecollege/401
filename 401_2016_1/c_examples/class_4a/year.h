#ifndef YEAR_H
#define YEAR_H

// creating a new type 
typedef char yearFrom1970;

// if the user passes 1972 as an argument, then
// the value returned will be 2.
yearFrom1970 MyDate_setYear(int theYear);

// if the user passes 2 as an argument, then
// the value returned will be 1972.
int MyDate_getYear(yearFrom1970 theDate);


#endif
