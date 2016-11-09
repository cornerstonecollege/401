//
//  main.c
//  ex4
//
//  Created by SG on 2016-09-02.
//  Copyright © 2016 SG. All rights reserved.
//

#include<stdio.h>

int main(int argc, const char * argv[]) {
    int sub1,sub2,sub3,suma;
    float average;
    printf("\n Enter mark of Subject 1  : ");
    scanf("%d",&sub1);
    printf("\n Enter  mark of Subject 2  : ");
    scanf("%d",&sub2);
    printf("\n Enter mark of Subject 3  : ");
    scanf("%d",&sub3);
    
    suma = sub1+sub2+sub3;
    average = suma / 3;
    printf("\n\n The Average of marks is %.2f",average);
}

