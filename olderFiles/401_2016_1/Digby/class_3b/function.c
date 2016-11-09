#include <stdio.h>
#include "util.h"

int main()
{
  int resultAdd = addSum(2, 3);
  printf("The addition of 2 and 3 is: %i\n", resultAdd);
  
  int resultSub = subSum(2, 3);
  printf("The subtraction of 2 and 3 is: %i\n", resultSub);

  double resultDiv = divSum(2, 3);
  printf("The division of 2 and 3 is: %f\n", resultDiv);

  int resultMulti = multiSum(2, 3);
  printf("The multiplication of 2 and 3 is: %i\n", resultMulti);
  
  return 0;
}
