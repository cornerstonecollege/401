//
//  main.c
//  CapitalLetters
//
//  Created by Nicholas on 2016-09-02.
//  Copyright © 2016 Nicholas. All rights reserved.
//

#include <stdio.h>
#include <ctype.h>
int main ()
{
    int i=0;
    char str[]="Test String.\n";
    char c;
    while (str[i])
    {
        c=str[i];
        putchar (toupper(c));
        i++;
    }
    return 0;
}
