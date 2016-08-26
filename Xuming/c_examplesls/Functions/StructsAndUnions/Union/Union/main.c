//
//  main.c
//  Union
//
//  Created by Nicholas on 2016-08-25.
//  Copyright © 2016 Nicholas. All rights reserved.
//

#include <stdio.h>


union _UnionType {
    char a;
    int b;
};

typedef union _UnionType UnionType;

int main() {
    
    UnionType myUnion;
    printf("%c %i\n", myUnion.a, myUnion.b);
    return 0;
}
