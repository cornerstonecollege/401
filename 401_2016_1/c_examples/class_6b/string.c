#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv)
{
  int sizeOfString;
  printf("What size of string do you need?");
  scanf("%d", &sizeOfString);

  char *str = malloc(sizeof(char) * sizeOfString);

  printf("Type the string: ");
  scanf("%s", str);

  printf("The string is: %s\n", str);

  free(str);
  return 0;
}
