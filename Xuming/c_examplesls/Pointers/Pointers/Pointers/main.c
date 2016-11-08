//
//  main.c
//  Pointers
//
//  Created by Nicholas on 2016-08-26.
//  Copyright © 2016 Nicholas. All rights reserved.
//

#include <stdio.h>

void swap(int *a, int *b)

{
    
    if(*a != *b)
        
        *a ^= *b ^= *a ^= *b;
    
}



int main(void)

{
    
    int a = 11, b = 3;
    
    
    
    printf("===== before swapping =====\n");
    
    printf("a: %d, b: %d\n", a, b);
    
    
    
    swap(&a, &b);
    
    
    
    printf("===== after swapping =====\n");
    
    printf("a: %d, b: %d\n", a, b);
    
    
    
    return 0;
    
}
