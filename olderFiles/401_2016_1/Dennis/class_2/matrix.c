#include <stdio.h>
#define ROW 5
#define COLUMN 20
int main()
{
  char listOfNames[ROW][COLUMN];
  for(int  line = 0 ; line<ROW ; line++)
  {
    printf("Please type name %i: ", (line+1));
    scanf("%s", listOfNames[line]);  
  } 
  
  for(int line = 0 ; line<ROW ; line++)
  {
    printf("The name at the line  %s\n", listOfNames[line]);
  }   





  return 0;
}
