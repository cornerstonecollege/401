#include <stdio.h>

#define ARR_NUMBER 5

int main()
{
  int x[ARR_NUMBER];
  
  for (int i = 0; i < ARR_NUMBER; i++)
  {
    printf("Write the number %i: ", (i+1));
    scanf("%i", &x[i]);
  }
  
  // processing

  for (int i = 0; i < ARR_NUMBER; i++)
  {
    printf("The number in the position %i is %i\n", (i+1), x[i]);
  }

  return 0;
}
