#include <stdio.h>
#include <stdlib.h>
#include "Node.h"

int main(int argc, char **argv)
{
  Node *rootNode = (Node *) malloc(sizeof(Node));   
  rootNode->value = 12;
  rootNode->nextNode = NULL;
  
  printf("My root value is %d and it points to: %p\n", rootNode->value, rootNode->nextNode);
  
  
  
  free(rootNode);
  return 0;
}
