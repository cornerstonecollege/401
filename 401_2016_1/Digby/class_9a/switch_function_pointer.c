#include<stdio.h>

float add(float a, float b);
float sub(float a, float b);
float mul(float a, float b);
float div(float a, float b);

typedef float (*OperationDef) (float, float);

int main()
{
  
  
  
  
  
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

