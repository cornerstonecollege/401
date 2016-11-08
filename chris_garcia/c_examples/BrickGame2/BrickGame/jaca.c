#include <stddef.h>
#include <stdlib.h>
#include <unistd.h>

#include <sys/types.h>
#include <signal.h>

#include <stdio.h>

#define PROGRAM "echo 'Hey'"

static volatile int keepRunning = 1;

void sigintHandler(int signal)
{
  printf("gule gule\n");
  keepRunning = 0;
}

int main(int argc, char **argv)
{
  signal(SIGINT, sigintHandler);
  while (keepRunning)
  {
    int s, signal;
    printf("fork will start running\n");
    pid_t pid;
    pid = fork();
    if (pid == 0)
    {
      // execute the command
      //execl (PROGRAM, PROGRAM, ARGS);
      system(PROGRAM);
      _exit (EXIT_FAILURE);
    }

    sleep(1);
    kill(pid, SIGTERM);
  }

  return 0;
}
