//
//  main.c
//  ex14
//
//  Created by SG on 2016-09-02.
//  Copyright © 2016 SG. All rights reserved.
//

#include<stdio.h>
#include<string.h>

int main(int argc, const char * argv[]) {
    int j,i,ii,iii,len;
    
    char word[100];
    char word2[100];
    char word3[100];


    printf("Enter 3 names\n");
    
    gets(word);
    gets(word2);
    gets(word3);

    printf("\n");
    i = strlen(word) - 1;
    while(i > -1)
    {
        printf("%c",word[i--]);
    }
    
    ii = strlen(word2) - 1;
    while(ii > -1)
    {
        printf("%c",word2[ii--]);
    }
    
    iii = strlen(word3) - 1;
    while(iii > -1)
    {
        printf("%c",word3[iii--]);
    }


    return 0;
}
