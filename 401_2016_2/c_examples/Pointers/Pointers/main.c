//
//  main.c
//  Pointers
//
//  Created by Luiz on 2016-08-26.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#include <stdio.h>

void swap(int *a, int *b);

int main(int argc, const char * argv[])
{
    int x = 100;
    int *ptr = &x;
    *ptr = 3;
    
    printf("x value: %i address: %p\n", x, &x);
    printf("ptr value: %p address: %p\n", ptr, &ptr);
    return 0;
}
