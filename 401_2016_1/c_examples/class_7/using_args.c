#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv)
{
  int sum = 0;

  // ignores the 0th argument, as it is the name of the program
  for (int i = 1; i < argc; i++)
  {
    char *currentStr = argv[i];
    sum += atoi(currentStr); // atoi means ASCII to Integer
  }  

  printf("The average of the parameters is: %.2f\n", ((float)sum / (argc - 1)));

  return 0;
}
