#include <stdio.h>

#define NLINES 5

int main()
{
  char listOfNames[NLINES][20];

  for (int line = 0; line < NLINES; line++)
  {
    printf("Type the name %i: ", (line + 1));
    scanf("%s", listOfNames[line]);
  }

  // processing

  for (int line = 0; line < NLINES; line++)
  {
    printf("The name at the line %i is: %s\n", (line + 1), listOfNames[line]);
  }
  
  return 0;
}
