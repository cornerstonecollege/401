#include <stdio.h>

int main(int argc, char **argv)
{
  for (int i = 0; i < argc; i++)
  {
    printf("The argument is %s and its address is %p\n", argv[i], &(argv[i]));
  }

  return 0;
}
