#include <stdio.h>
#include <stdlib.h>
#include "Object.h"

#define new(TYPE) TYPE##_new()

int main()
{
  Object *obj = new(Object);
  obj->description = "This is a regular object.";

  printf("%s\n", obj->getDescription(obj));
  free(obj);

  return 0;
}
