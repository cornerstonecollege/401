//
//  main.c
//  names backwards
//
//  Created by Nicholas on 2016-09-02.
//  Copyright © 2016 Nicholas. All rights reserved.
//

#include<stdio.h>

char * strRev(char *str, char tok)
{
    int len = 0, i;
    char *temp = str;
    char swap;
    
    while(*temp != tok && *temp != '\0') {
        len++; temp++;
    }
    len--;
    
    for(i = 0; i < len/2; i++) {
        swap = str[i];
        str[i] = str[len - i];
        str[len - i] = swap;
    }
    
    // Return pointer to the next token.
    return str + len + 1;
}

int main(void)
{
    char a[] = "Reverse this string.";
    char *temp = a;
    
    if (a == NULL)
        return -1;
    
    // Reverse whole string character by character.
    strRev(a, '\0');
    
    // Reverse every word in the string again.
    while(1) {
        temp = strRev(temp, ' ');
        if (*temp == '\0')
            break;
        
        temp++;
    }   
    printf("Reversed string: %s\n", a); 
    return 0;
}