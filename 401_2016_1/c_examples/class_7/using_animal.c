#mal *include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include "Animal.h"

int main(int argc, char **argv)
{
  if (argc != 3)
  { 
    printf("Format: ./a.out 'animalName' 'numberOfLegs' \n");
    return -1;
  }

  for (int i = 0; i < strlen(argv[2]); i++)
  {
    if (isalpha(argv[2][i]))
    {
      printf("Format: ./a.out 'animalName' 'numberOfLegs' \n");
      return -1;
    }
  }
  
  Animal *animal = (Animal *) malloc(sizeof(Animal)); 
  animal->name = argv[1];
  animal->numberOfLegs = atoi(argv[2]);

  printf("The animal is %s and has %d legs\n", animal->name, animal->numberOfLegs);
  
  free(animal);
  return 0;
}

