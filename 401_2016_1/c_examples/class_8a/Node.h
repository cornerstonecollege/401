#ifndef NODE_H
#define NODE_H

struct _Node
{
  int value;
  struct _Node *nextNode;
};

typedef struct _Node Node;

#endif
