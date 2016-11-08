#include <stdio.h>

int main()
{
  int x;
  int y;
  int z;

  printf("Please enter the first number: ");
  scanf("%i", &x);

  printf("Please enter the second number: ");
  scanf("%i", &y);

  z = x + y;
  
  printf("The sum is %i\n", z);
  printf("The sum is %p\n", &z);

  return 0;
}
