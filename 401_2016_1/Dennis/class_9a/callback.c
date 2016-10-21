#include <stdio.h>
#include <stdbool.h>

typedef void (*CallbackDef) ();

void success_();
void failure_();
void retrieveInformation(CallbackDef succeed, CallbackDef failed);


int main(int argc, int argv)
{
  retrieveInformation(&success_, &failure_);



  return 0;

}

void success_()
{

  printf("Hey, the process ended succesfully.\n");

}


void failure_()
{
  printf("There was an unexpected error.\n");

}
    
void retrieveInformation(CallbackDef succeed, CallbackDef failed)
{
  bool didWork= false;

  if(didWork)
  {
    succeed();
  }
  else
  {
    failed();
  }
}
