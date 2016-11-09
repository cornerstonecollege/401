//
//  main.c
//  ex12
//
//  Created by SG on 2016-09-02.
//  Copyright © 2016 SG. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {

    //definicja zmiennych i tablicy
    int i, tablica[50], num;
    
    printf("\nEnter numbers of elements in array :");
    scanf("%d", &num);
    
    printf("\nEnter the values :");
    for (i = 0; i < num; i++) {
        scanf("%d", &tablica[i]);
    }
    
    for (i = 0; i < num; i++) {
        printf("\n [%d] = %d \n", i, tablica[i]);
    }
    
    return (0);}
