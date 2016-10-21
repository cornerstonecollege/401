#include <stdio.h>

int main()
{
	// char letter = 'A';
	// printf("%c\tHello\n", letter);

	// char str[20];
	// printf("Write a name:\n");
	// scanf("%s", str);
	// printf("Hello %s\n", str);

	int matrix[10][10] = {0};
	matrix[0][0] = 0;
	matrix[1][1] = 1;
	matrix[2][2] = 2;
	matrix[3][3] = 3;
	matrix[4][4] = 4;
	matrix[5][5] = 5;
	matrix[6][6] = 6;
	matrix[7][7] = 7;
	matrix[8][8] = 8;
	matrix[9][9] = 9;

	int rowNum, colNum;

	printf("Write the row you want to get:\n");
	scanf("%i", &rowNum);
	printf("Write the col you want to get:\n");
	scanf("%i", &colNum);

	// Prints the current value.
	printf("Final result is %i", matrix[rowNum][colNum]);
	
	// Changes the value in the same position.
	matrix[rowNum][colNum] = 1;

	printf("\n");
	printf("\n");

	// Changes the value in the same position.
	printf("Whole Matrix is \n");

	for (int row = 0 ; row < 10 ; row++)
	{
		for (int col = 0; col < 10 ; col++)
		{
			printf("%i", matrix[row][col]);
		}

		printf("\n");
	}

	return 0;
}

/*
%s = string
%c = characters
%d = decimal integer
%i = integer
%f = floating number
%ld = long decimal diget
%lu = insigned long
%2f = floating number with 2 deciaml points
%p = pointer address
*/