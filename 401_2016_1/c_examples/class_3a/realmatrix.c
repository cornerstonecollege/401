#include <stdio.h>
#include <stdbool.h>

#define NCOLS 3
#define NROWS 2

#define forever() while(true)

int main()
{
  bool booleanMatrix[NROWS][NCOLS] = {0};

  forever() // that is a macro for 'while(true)'
  {
    int row;
    int col;
    
    printf("Type the number of the row: ");
    scanf("%i", &row);

    printf("Type the number of the column: ");
    scanf("%i", &col);

    if(booleanMatrix[row][col])
    {
      break;
    }
    else
    {
      // if that element is not toggled, we do it
      booleanMatrix[row][col] = true;
    }
  }
    
  for (int row = 0; row < NROWS; row++)
  {
    for (int col = 0; col < NCOLS; col++)
    {
      printf("%i ", booleanMatrix[row][col]);
    }
 
    printf("\n");
  }

  return 0;
}
