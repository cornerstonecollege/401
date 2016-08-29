//
//  main.c
//  MorePointers
//
//  Created by Luiz on 2016-08-29.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#include <stdio.h>

typedef int Integer;
typedef int* IntegerPtr;
typedef int** IntegerPtrToIntPtr;

void swap(IntegerPtr a, IntegerPtr b);

int main(int argc, const char * argv[])
{
    Integer var1 = 3;
    Integer var2 = 5;
    
    swap(&var1, &var2);
    
    printf("Var1 is %i Var 2 is %i\n", var1, var2);
    
    return 0;
}

void swap(IntegerPtr a, IntegerPtr b)
{
    int temp = *a;
    *a = *b;
    *b = temp;
}
