#include <stdio.h>
#include "animal.h"
#include <stdlib.h>


int main (int argc, char **argv)
{
  Animal *animal = (Animal *)  malloc(sizeof(Animal));
  
  animal -> numberOfLegs = atoi(argv[1]);

  animal -> name =argv[2];
  
  printf("The %s has %d amount of legs", animal->name, animal->numberOfLegs);  
  free(animal);
  return 0;
} 
