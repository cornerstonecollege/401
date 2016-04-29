#include <stdio.h>

struct _SeparateShort
{
  char LOW;
  char HIGH;
};

typedef struct _SeparateShort SeparateShort;

union _Audio
{
  short audioWave;
  SeparateShort audio; 
};

typedef union _Audio Audio;

int main()
{
  Audio myAudio;
  myAudio.audioWave = 0x6130;
  printf("My myAudio.audioWave is: %hd\n", myAudio.audioWave);
  printf("I did not set the audio var, although... myAudio.audio.LOW is: '%c'\n", myAudio.audio.LOW);
  printf("And myAudio.audio.HIGH is: '%c'\n", myAudio.audio.HIGH);

  myAudio.audio.LOW = 'b';
  printf("Now I've changed myAudio.audio.LOW to 'b' and the value of myAudio.audioWave is: %hd\n", myAudio.audioWave);

  return 0;
}
