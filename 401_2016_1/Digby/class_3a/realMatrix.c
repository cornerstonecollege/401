#include <stdio.h>
#include <stdbool.h>

#define NROWS 2
#define NCOLS 3

#define forever() while(true)

int main()
{
  bool booleanMatrix [NROWS][NCOLS] = {0};    
  
  forever() //this is a macro for 'while(true)'
  {
    int row;
    int col;

    printf("Type the number of the row: ");
    scanf("%i",&row);

    printf("Type the number of the colum: ");
    scanf("%i",&col);
    
    if(booleanMatrix[row][col])	
    {
      //break out if the cell contains a true value "1"
      break;
    }
    else
    {
      //toogle true in the cell if it was false before
      booleanMatrix[row][col] = true;
    }
  } 

  for(int row = 0; row < NROWS; row++)
  { 
    for(int col = 0; col < NCOLS; col++)
    {
      printf("%i",booleanMatrix[row][col]);
    }      
    printf("\n");
  }
  return 0;
}
