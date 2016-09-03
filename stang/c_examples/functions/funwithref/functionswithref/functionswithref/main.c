//
//  main.c
//  functionswithref
//
//  Created by SG on 2016-08-26.
//  Copyright © 2016 SG. All rights reserved.
//

#include <stdio.h>

void add(int num1, int num2);
int main (void)
{
    int liczba = 80;
    printf("Wartość zmiennej liczba: %d\n", liczba );
    printf("Adres zmiennej liczba: %p\n", &liczba );
    return 0;
}