//
//  main.c
//  Union
//
//  Created by Luiz on 2016-08-25.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#include <stdio.h>

union _UnionType {
    char a;
    int b;
};

typedef union _UnionType UnionType;

int main()
{
    UnionType myUnion;
    myUnion.b = 16506;
    //myUnion.a = 'z';
    printf("%c %i %i\n", myUnion.a, myUnion.a, myUnion.b);
    return 0;
}
