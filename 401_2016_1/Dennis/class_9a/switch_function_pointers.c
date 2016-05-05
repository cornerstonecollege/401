#include <stdio.h>


float add(float a, float b);
float sub(float a, float b);
float mul(float a, float b);
float div(float a, float b);

typedef float (*OperationDef)( float, float);

int main()
{
  float x = add(2,3);
  float y = sub(4,3);
  float z = mul(3,10);
  float v = div(6,2);
   


  return 0;

}


float add(float a, float b)
{
  return a+b;
}

float sub(float a, float b)
{
  return a-b;
}

float mul(float a, float b)
{
  return a * b;
}

float div(float a, float b)
{

  return a / b; 
}

