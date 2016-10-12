#include <stdio.h>

float sum(float a, float b);

int main()
{
  float (*getFloatPlus10)(float, float);
  getFloatPlus10 = &sum;
  
  float x = 2.0;
  float mySum = getFloatPlus10(x, 10.0);
  printf("My sum is %f",mySum);
  
  
  
  return 0;
}

float sum(float a, float b)
{
  return a+b;
  
  
}
