#include <stdio.h>
typedef char* string;


struct _Person
{
    string name;
    int age;
};


typedef struct _Person Person;


int main() {
    
    //struct Person person;
    Person person;
    person.name="Jorge";
    person.age= 18;
    
    // insert code here...
    printf("The name aaaaa is %s and the age is %i\n", person.name, person.age);
    printf("The size of the struct is %ld\n",sizeof(Person));
    return 0;
}
