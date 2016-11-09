#include <stdlib.h>
#include "Object.h"

static char* Object_getDescription(Object *this);

Object* Object_new()
{
  Object *this = (Object *) malloc(sizeof(Object));
  if (this)
  {
    this->getDescription = &Object_getDescription;
  }
  return this;
}

static char* Object_getDescription(Object *this)
{
  return this->description;
}
