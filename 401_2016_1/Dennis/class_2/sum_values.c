#include <stdio.h>

int main()
{

  int x;
  int y;
  int z;

  printf("please enter the first number: ");
  scanf("%i", &x);

  printf("please enter the second  number: ");
  scanf("%i", &y);

  z= x + y;

  printf("The sum of the x and y is: %i\n  ", z);
  printf("The sum of the x and y is: %p\n  ", &z);

  return 0;
}

