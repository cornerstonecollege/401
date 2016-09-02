

#include <stdio.h>

void swap(int *a, int *b);

int main(int argc, const char * argv[]) {
   
    int a = 5;
    int b = 3;
    
    swap(&a, &b);
    
    printf("a is equal to:  %i\n", a);
    printf("b is equal to: %i\n", b);
    
    return 0;
}

void swap(int *a, int *b)
{
    int temp = *a;
    *a = *b;
    *b = temp;
}



