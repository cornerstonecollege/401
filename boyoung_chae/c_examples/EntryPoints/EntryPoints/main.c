//
//  main.c
//  EntryPoints
//
//  Created by Boyoung on 2016-08-26.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    for (int i = 0 ; i < argc ; i++)
    {
        printf("The argument %i is %s.\n", i , argv[i]);
    }

    return 0;
}
