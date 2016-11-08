#include <stdio.h>
#include "util.h"

int main()
{
  
  int add = sum(2, 3);
  int minus = sub(2, 3);
  double divide = div(2, 3);
  int mult = multi(2, 3);
  printf("The addition of 2 and 3 is : %i \n", add);
  printf("The subtraction of 2 and 3 is : %i \n", minus);
  printf("The division of 2 and 3 is : %f \n", divide);
  printf("The multiply of 2 and 3 is: %i \n", mult); 
 



 return 0;
  
  

}
