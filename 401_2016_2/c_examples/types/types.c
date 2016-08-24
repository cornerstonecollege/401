#include <stdio.h>

int main()
{
	int number;
	printf("Write a number:\n");
	scanf("%i", &number+
		);

	char letter = 'A';
	printf("%c\n", letter);

	char str[20];
	printf("Write a name:\n");
	scanf("%s", str);
	printf("Hello %s\n", str);

	int matrix[3][3] = {0};
	matrix[0][0] = 1;
	matrix[2][2] = 1;

	for (int row = 0; row < 3; row++)
	{
		for (int col = 0; col < 3; col++)
		{
			printf("%i ", matrix[row][col]);
		}

		printf("\n");
	}

	return 0;
}

/*
%s = string
%c = characteres
%d = decimal integer
%i = integer
%f = floating number
%ld = long decimal integer
%lu = unsigned long
%.2f = floating number with 2 decimal points
%p = pointer address
*/
