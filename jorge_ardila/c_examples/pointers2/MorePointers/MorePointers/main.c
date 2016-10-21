// Pointer is a variable that stores an address

#include <stdio.h>
#include <stdlib.h>

typedef int Integer;
typedef int* IntegerPtr;
typedef char*  string;

// Always that we are using a new method or function we have to call it first in this part
void swap (IntegerPtr a, IntegerPtr b);

// this is the coding for swaping variables  
int main(int argc, const char * argv[])
{
    Integer var1;
    Integer var2;
    
    swap(&var1, &var2);
    
    return 0;
}

void swap (IntegerPtr a, IntegerPtr b)
{
    int temp = *a;
    *a = *b;
    temp = *b;
    
}
// how to add more space to a string for the user to put a larger amount of text like a large name.
// using mallos is like casting the string and giving it more bites for space on data.
// it needs the library <Stdlib.h> importet to function properly.
int spaceString(int arg, const char * argv[])
{
    string myString = (string)malloc(20);
    printf("Type your name:");
    scanf("%s", myString);
    printf("My string is %s\n", myString);
    free(myString);
    
    return 0;
}
