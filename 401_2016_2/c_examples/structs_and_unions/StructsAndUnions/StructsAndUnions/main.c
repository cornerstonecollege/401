//
//  main.c
//  StructsAndUnions
//
//  Created by Luiz on 2016-08-25.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#include <stdio.h>

typedef char* string;

struct _Person {
    string name;
    int age;
};

typedef struct _Person Person;

int main()
{
    Person person;
    person.name = "Luiz";
    person.age = 18;
    
    printf("The name is %s and the age is %i\n", person.name, person.age);
    printf("The size of the struct is %ld\n", sizeof(Person));
    return 0;
}
