#include <stdio.h>

int main()
{
  int row1 = 0;
  printf("Choose a row/n");
  scanf("%i", &row1);

  int col1 = 0;
  printf("Choose a column/n");
  scanf("%i", &col1);

  char str[10];
  int matrix [2][5] = {0};
  matrix [row1][col1] = 1;


  for (int row = 0; row < 2; row++)
  {

    for (int col = 0; col < 5; col++) {
      printf("%i", matrix[row][col] );
    }

    printf("\n");
  }

  return 0;


}


// %s = string
// %c = characters - char
// %d = decimal/digit
// %i = integer
// %f = floating number
// %ld = long digit
// %.2f = floating number with 2 decimal point
// %p = pointer address
