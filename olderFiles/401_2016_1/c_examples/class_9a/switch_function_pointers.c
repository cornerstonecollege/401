#include <stdio.h>

float add(float a, float b);
float sub(float a, float b);
float mul(float a, float b);
float div(float a, float b);

typedef float (*OperationDef) (float, float); // declaring the type OperationDef
                                              // as a function pointer

typedef char* string;

int main(int argc, char **argv)
{
  OperationDef operation;
  char op = argv[1][0]; // for example: ./a.out +
  switch(op)
  {
    case '+':
    {
      operation = &add;
      break;
    }
    case '-':
    {
      operation = &sub;
      break;
    }
    case '*':
    {
      operation = &mul;
      break;
    }
    case '/':
    {
      operation = &div;
      break;
    }
    default:
    {
      operation = NULL;
      break;
    }
  }

  if (operation)
  {
    float result = operation(10.0, 5.0);
    printf("The result of 10.0 %c 5.0 is %.2f\n", argv[1][0], result);
  }
 
  return 0;
}

float add(float a, float b)
{
  return a + b;
}

float sub(float a, float b)
{
  return a - b;
}

float mul(float a, float b)
{
  return a * b;
}

float div(float a, float b)
{
  return a / b;
}
