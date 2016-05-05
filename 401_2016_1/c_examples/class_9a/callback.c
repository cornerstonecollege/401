#include <stdio.h>
#include <stdbool.h>

typedef void (*CallbackDef) ();

void retrieveInformation(CallbackDef succeed, CallbackDef failed);
void didSucceed();
void didFail();

int main()
{
  retrieveInformation(&didSucceed, &didFail);

  return 0;
}

void didSucceed()
{
  printf("Hey, the process ended successfully.\n");
}

void didFail()
{
  printf("There was an unexpected error.\n");
}

void retrieveInformation(CallbackDef succeed, CallbackDef failed)
{
  bool didWork = false;
  // process.....

  if (didWork)
  {
    succeed();
  }
  else
  {
    failed();
  }
}

