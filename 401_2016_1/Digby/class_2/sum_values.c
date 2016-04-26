#include <stdio.h>

int main()
{
  int x;
  int y;
  int z;

  printf("Please enter the first number: ");
  scanf("%i", &x);

  printf("Please enter the second nunber: ");
  scanf("%i", &y);

  z = x + y;

  printf("The sum of the two numbers is: %i \n" , z);
 
  return 0;
}
