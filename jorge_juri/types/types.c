#include <stdio.h>


int main()
{


int matrix[3][3]={0};

matrix[0][0]=1;
matrix[2][2]=1;

for (int row = 0; row < 3; row++)
{
	for (int column = 0; column <  3; column++)
	{
		printf("%i", matrix[row][column]);
		/* code */
	}
	printf("\n");
	/* code */
}

return 0;
}
/*
int mat[100][100];
int row,column,i,j;
printf("enter how many row and colmn you want:\n \n");
scanf("%d",&row);
scanf("%d",&column);
printf("enter the matrix:");

for(i=0;i<row;i++){
    for(j=0;j<column;j++){
        scanf("%d",&mat[i][j]);
    }

printf("\n");
}

for(i=0;i<row;i++){
    for(j=0;j<column;j++){
        printf("%d \t",mat[i][j]);}

printf("\n");}
}


%s=string
%c=characteres
%d=decimal\digit
%i=integer
%f=floating number
%ld=long decimal integer
%lu=unsigned long
%.2f= floating number with 2 decimal point
%p=pointer address
*/


