#include <stdio.h>

int main()
{
char letter = 'A';
printf("%c\n", letter);

char str[20];
printf("Write a name:\n");
scanf("%s", str);
printf("Hello %s\n", str);


int number = 15, number2 =24;
while (number >= 10) {
  printf("Chose a row ");
  scanf("%i", &number );
  if (number >= 10)
  {
    printf("You can not chose more than 10\n");
  }
}
while (number2 >= 10) {
  printf("Chose a col");
  scanf("%i", &number2 );
  if (number2 >= 10)
  {
    printf("You can not chose more than 10\n");
  }
}

int matrix[10][10] = {0};
matrix[number][number2] = 1;


for (int row = 0; row < 10; row++)
{
  for (int col = 0; col < 10; col++)
  {
    printf("%i",matrix[row][col] );
  }
  printf("\n");
}

return 0;

}
