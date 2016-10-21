#ifndef MONSTER_H
#define MONSTER_H

typedef struct _Monster
{
  char *imageName;
  int type;
  int level;
  int health;
} Monster;

Monster* Monster_new();
void Monster_release(Monster *this);
void Monster_setName(Monster *this, char *name);
int Monster_getHealth(Monster *this);
void Monster_getDescription(Monster *this);

#endif
