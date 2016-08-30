//
//  main.c
//  MorePointers
//
//  Created by Boyoung on 2016-08-29.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#include <stdio.h>

typedef int Integer;
typedef int* IntergerPtr;
typedef int** IntergerPtrToIntPtr;

void swap(IntergerPtr a, IntergerPtr b);

int main(int argc, const char * argv[])
{
    Integer var1 = 3;
    Integer var2 = 5;
    
    swap(&var1, &var2);
    
    printf("Var1 is %i, Var2 is %i.\n", var1, var2);
    
    return 0;
}

void swap(IntergerPtr a, IntergerPtr b)
{
    int temp = *a;
    *a = *b;
    *b = temp;
}
