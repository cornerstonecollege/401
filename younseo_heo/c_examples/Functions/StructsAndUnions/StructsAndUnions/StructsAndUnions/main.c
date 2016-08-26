//
//  main.c
//  StructsAndUnions
//
//  Created by younseolocal on 2016-08-25.
//  Copyright © 2016 younseolocal. All rights reserved.
//

//#include <stdio.h>
//
//// Defining a type
//typedef char* string;
//
//struct _Person
//{
//    string name;
//    int age;
//};// Need a semicolone because of not a function
//
//typedef struct _Person Person;
//
//int main()
//{
//    // insert code here...
//    //struct Person person;
//    Person person;
//    person.name = "Luiz";
//    person.age = 18;
//    
//    printf("The name is %s and the age is %i\n", person.name, person.age);
//    printf("The size of the struct is %ld\n", sizeof(Person));
//    return 0;
//}


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