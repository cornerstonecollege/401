#include <stdio.h>

void swapNum(int *x, int *y);

int main()
{
  int x = 2;
  int y = 7;

  printf("Before swapNum():\n x:%d y:%d \n", x, y);
  swapNum(&x, &y);
  printf("After swapNum():\n x:%d y:%d \n", x, y);
}

void swapNum(int *x, int *y)
{
  int tempx = *x;
  *x = *y;
  *y = tempx;
}
