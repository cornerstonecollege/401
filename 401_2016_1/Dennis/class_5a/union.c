#include <stdio.h>

struct _SeperateShort
{

  char LOW;
  char HIGH;
};
typedef struct _SeperateShort SeperateShort;

union _Audio
{
  short audioWave;
  SeperateShort audio;


}; 
typedef union _Audio Audio; 

int main()
{

  Audio myAudio;
  myAudio.audioWave= 0x6130;
  printf("MY audiowave is %hd \n", myAudio.audioWave);
  printf("I did not set th audio var, although ... audioWave.audio.LOW is:  '%c' \n", myAudio.audio.LOW);
  printf("and myAudo.audio.HIGH is: '%c' \n", myAudio.audio.HIGH);

  myAudio.audio.LOW = 'b';
  printf("now i have changed myAudio.audio.LOW to 'b' and the value of myAudio.audio.low is: %d \n", myAudio.audioWave);
  

  return 0;


}
