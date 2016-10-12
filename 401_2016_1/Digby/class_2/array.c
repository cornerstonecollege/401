#include <stdio.h>

#define NUM_CALC 5

int main()
{
  int x[NUM_CALC];
  
  for(int i = 0;i < NUM_CALC; i++)
  {
    printf("Write the number %i: ", (i+1));
    scanf("%i", &x[i]); 
  }


  //Processing


  for(int i = 0; i < NUM_CALC ; i++)
  {
    printf("The number in the position %i is: %i\n", (i+1), x[i]);
  }

  
  return 0;
}
