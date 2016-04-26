#include <stdio.h>
#define ARR_NUMBER 2

int main()
{
  int x[5];

    
  for(int i = 0 ; i<ARR_NUMBER ; i++)
  {
    printf("write the number %i: ", (i+1));
    scanf("%i", &x[i]);    

  }

  for(int i = 0 ; i<ARR_NUMBER ; i++)
  {
    printf("The number in  position %i is %i\n", (i+1), x[i]);    



  }  


  return 0;




}
