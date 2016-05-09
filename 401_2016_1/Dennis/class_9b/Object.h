#ifndef OBJECT_H
#define OBJECT_H

struct _Object
{
  char* description;
  char* (*getDescription)(struct _Object *this);
};

typedef struct _Object Object;

Object* Object_new();

char* Object_getDescription(Object *this);



#endif
