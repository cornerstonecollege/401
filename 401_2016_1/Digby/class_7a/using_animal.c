#include <stdio.h>
#include <stdlib.h>
#include "Animal.h"

int main(int argc, char **argv)
{
  Animal *animal = (Animal *) malloc(sizeof(Animal));
  
  animal->numberOfLegs = atoi(argv[1]);
  
  animal->name = argv[2];
  
  printf("The animal is a %s and it has %d legs \n",animal -> name, animal -> numberOfLegs );

  free(animal);
  return 0;
}
