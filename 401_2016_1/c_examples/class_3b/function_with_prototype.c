#include <stdio.h>

int sum(int x, int y);

int main()
{
  int result = sum(2, 3);
  printf("The addition of 2 and 3 is: %i\n", result);
  return 0;
}

int sum(int x, int y)
{
  return x + y;
}
