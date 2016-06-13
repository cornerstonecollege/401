#include <stdio.h>

// entry point of the program
// argc argument count
// argv argument vector
int main(int argc, char *argv[])
{
  // if it is not passing an argument, ask the user to do it
  if (argc == 1)
  {
    printf("Hey! You will need to pass at least one argument!\n");
    return -1;
  }

  // step trough the array of arguments
  for (int i = 0; i < argc; i++)
  {
    printf("The argument %i is %s\n", i, argv[i]);
  }

  return 0;
}
