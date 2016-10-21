#include "stringUtil.h"

string getString (int x)
{
  switch (x)
  {
    case 1 : 
      return "Digby\n";
    case 2 :
      return "Dennis\n";
    case 3 :
      return "Manu\n";
    default :
      return "Try again\n";
  }
}


