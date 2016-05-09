#include <stdio.h>
#include <stdbool.h>

typedef void (*CallBackDef) ();

void success();
void failure();

void retrieveInformation(CallBackDef success, CallBackDef faulure);

int main(int argc,char **argv)
{
  retrieveInformation(&success, &failure);
  
  return 0;
}

void retrieveInformation(CallBackDef succedid, CallBackDef failed)
{
  bool didWork = true;

  if(didWork)
  {
    succedid();
  }
  else
  {
    failed();
  }
}


void success()
{
  printf("The process ended successfully. \n");
}

void failure()
{
  printf("There was an unexpected error.\n");
}

