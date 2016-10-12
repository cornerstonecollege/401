#include <stdio.h>

#define LINES 5
#define COLUMBS 20

int main()
{
  char listOfNames[LINES][COLUMBS]; 
  
  for(int i = 0; i < LINES; i++)
  {
    printf("Please enter name number %i: ",i+1);
    scanf("%s", listOfNames[i]);
  }

  //Processing

  for(int i = 0; i < LINES; i++)
  {
    printf("Name number %i is %s:\n",i+1, listOfNames[i]);
  }

  return 0;
}
