#include <stdio.h>

void changeVars(int *varA, int varB);//prototype

int main()
{
  int x = 2;
  int y = 5;

  printf("Before changeVars(): x:%d y:%d \n", x , y);
  changeVars(&x, y);
  printf("Before changeVars(): x:%d y:%d \n", x , y);
 
  return 0;


}

void changeVars(int *varA, int varB)
{


  *varA = 100;
  varB = 100;

}
