#include <stdio.h>


// defining the prototype for a struct student
struct _Student
{
  char *name;
  int id;
};

// defining a new type called "Student"
typedef struct _Student Student;

int main()
{
  // creating a new Student in the stack in the same way as "int x"
  Student student;
  student.name = "Ibo";
  student.id = 1;

  printf("The id is %i and the name is %s\n", student.id, student.name); 

  return 0;
}
