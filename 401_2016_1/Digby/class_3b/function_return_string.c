#include <stdio.h>
#include "stringUtil.h"

int main()
{
  int guess;
  printf("Please guess the number: ");
  scanf("%i",&guess);

  string answer = getString(guess);
  printf("%s",answer);

  return 0;
}
