#include <stdio.h>

void swap(int *firstVar, int *secondVar);

int main()
{
  int x;
  int y;

  printf("Type the value of x: ");
  scanf("%d", &x);

  printf("Type the value of y: ");
  scanf("%d", &y);

  printf("Before swap: x:%d y:%d\n", x, y); 
  swap(&x, &y);
  printf("After swap: x:%d y:%d\n", x, y); 

  return 0;
}

void swap(int *firstVar, int *secondVar)
{
  int aux = *firstVar;
  *firstVar = *secondVar;
  *secondVar = aux;
}
