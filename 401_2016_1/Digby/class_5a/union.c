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
  myAudio.audioWave = 0x6130;
  
  printf("My audio wave is: %hd \n My", myAudio.audioWave);
  printf("I did not set the audio var, although... myAudio.audio.LOW is: '%c' \n", myAudio.audio.LOW);
  printf("I did not set the audio var, although... myAudio.audio.HIGH is: '%c' \n", myAudio.audio.HIGH);
    
  myAudio.audio.LOW = 'b';
  printf("Now I've changed myAudio.audio.LOW to 'b' and the value of myAudio.audioWave is: %hd \n", myAudio.audioWave);
  
  return 0;
}




