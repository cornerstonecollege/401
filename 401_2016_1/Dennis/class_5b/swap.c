#include <stdio.h>

void  swapVars(int *varA , int *varB);

int main()
{
  int x;
  int y;
  printf("Type the value of x: ");
  scanf("%d", &x);

  printf("Type the value of y: ");
  scanf("%d", &y);


  printf("Before swap  x: %d y:%d", x ,y);
  swapVars( &y , &x);
  printf("Before swap  x: %d y:%d", x ,y);

  

  return 0;

}

void swapVars(int *varA, int *varB)
{
  int tempx;
  tempx = *varA;
  *varA = *varB;
  *varB = tempx; 




}
