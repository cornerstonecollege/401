//
//  main.c
//  StructsAndUnions
//
//  Created by Christian on 2016-08-25.
//  Copyright © 2016 Christian. All rights reserved.
//

#include <stdio.h>

typedef char* string;

struct _Person{
    string name;
    int age ;
};

typedef struct _Person Person;

int main()
{
    Person p ;
    p.name = "Chris";
    p.age = 19 ;
    
    printf("The name is %s and the age is %i\n",p.name, p.age);
    printf("The size of the struct is %ld\n", sizeof(Person));
    return 0;
}
