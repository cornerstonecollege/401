#include <stdio.h>

int main()
{
	// char letter = 'A';
	// printf("%c\n", letter);

	// char str[20];
	// printf("Write a name : \n");
	// scanf("%s",str);
	// printf("Hello %s\n", str);

	int matrix [10][10] = {0};

	matrix [0][1] = 1;
	matrix [2][3] = 5;
	matrix [3][4] = 7;
	matrix [5][5] = 10;
	matrix [6][7] = 13;
	matrix [8][9] = 17;

	// for (int row = 0; row < 10; row++)
	// {
	// 	/* code */
	// 	for (int col = 0; col < 10; col++)
	// 	{
	// 		/* code */
	// 		printf("%i ", matrix[row][col]);
	// 	}
	// 	printf("\n");
	// }

	int number1, number2;
	printf("Write a number\n");
	scanf("%i", &number1);
	printf("Write another number\n");
	scanf("%i", &number2);
	printf("You chose [%i][%i]\n", number1, number2);

	printf("The number of matrix is %i\n", matrix[number1][number2]);


	return 0;
}

/*
%s = string
%c = characteres
%d = decimal/digit
%i = integer
%f = floating number
%ld = long decimal integer
%lu = unsigned long
%.2f = floating number with 2 decimal points
%p = pointer address
*/