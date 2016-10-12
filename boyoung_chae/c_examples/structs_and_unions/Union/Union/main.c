//
//  main.c
//  Union
//
//  Created by Boyoung on 2016-08-25.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#include <stdio.h>

union _UnionType
{
    char a;
    int b;
};

typedef union _UnionType UnionType;

int main()
{
    UnionType myUnion;
    myUnion.b = 0;
    myUnion.a = 'z';
    printf("%c %i\n", myUnion.a, myUnion.b);
    return 0;
}
