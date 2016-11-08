#include <stdio.h>
#include <stdlib.h>

int main(void)
{
  printf("What is your name? \n");
  char str[10] = {0};
  scanf("%s", str);
  
  char result[30] = {0};
  sprintf(result, "say Hello %s", str);

  system(result);  

  return 0;
}
