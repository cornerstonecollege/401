//
//  main.c
//  Exercise1_AgeAndDays
//
//  Created by Boyoung on 2016-08-29.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int age;

    printf("===== Exercise 1 =====\n");
    printf("Enter the age you want to know how many days that the person has lived(The calculation is conducted roughly).: ");
    scanf("%i", &age);
    
    int days = age * 365;
    printf("--> He/She has lived for %i days.\n", days);
    
    return 0;
}
