#include <stdio.h>
#include <stdlib.h>
#include "Monster.h"

Monster* Monster_new()
{
  Monster *this = (Monster *) malloc(sizeof(Monster));

  if (this)
  {
    this->type = 1;
    this->level = 1;
    this->health = 100;
  }
  return this;
}

void Monster_release(Monster *this)
{
  free(this);  
}

void Monster_setName(Monster *this, char *name)
{
  this->imageName = name;
}

int Monster_getHealth(Monster *this)
{
  return this->health;
}

void Monster_getDescription(Monster *this)
{
  printf("[Monster] {ImageName: %s, Type: %d, Level:%d, Health:%d}\n",
        this->imageName,
        this->type,
        this->level,
        this->health); 
}
