#include <stdio.h>

#define HELLO "Hello World \n"

#define MYTHING int main(void)

#define MAX(A,B) (A > B) ? A : B 

MYTHING
{
  printf(HELLO);

  printf("The max of 2 and 3 is: %i", MAX(2, 3));

  return 0;
}
