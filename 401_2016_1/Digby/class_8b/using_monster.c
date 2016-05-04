#include "Monster.h"
#define new(TYPE) TYPE##_new()

int main()
{
  Monster *monster1 = new(Monster);
  monster1->type = 3;
  monster1->health = 50;
  Monster_setName(monster1, "Bee");
  Monster_getDescription(monster1);
  Monster_release(monster1);
  return 0;
}
