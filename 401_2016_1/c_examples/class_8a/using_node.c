#include <stdio.h>
#include <stdlib.h>
#include "Node.h"

int main(int argc, char **argv)
{
  Node *rootNode = (Node *) malloc(sizeof(Node));
  rootNode->value = 12;
  rootNode->nextNode = NULL;

  printf("Root Value is %d and it points to: %p\n", rootNode->value, rootNode->nextNode);

  rootNode->nextNode = (Node *) malloc(sizeof(Node));
  Node *childNode = rootNode->nextNode;
  childNode->value = 3;
  childNode->nextNode = NULL;

  printf("Root Value is %d and it points to: %p\n", rootNode->value, rootNode->nextNode);  
  printf("Child Value is %d and it points to: %p\n", childNode->value, childNode->nextNode);

  printf("On the next line, we are printing everything within a while loop\n");
  Node *auxNode = rootNode;
  while(auxNode != NULL)
  {
    printf("%d ", auxNode->value);
    auxNode = auxNode->nextNode;
  }
  printf("\n");

  free(childNode);
  free(rootNode);
  return 0;
}
