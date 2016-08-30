#include <stdio.h>
#include <ncurses.h>
#include <unistd.h>

void init();
void run();
void deinit();

int main()
{	
  init();
  run();
  deinit();
  return 0;
}

void init()
{
  initscr();
  noecho();
  cbreak();
  keypad(stdscr, TRUE);
  curs_set(FALSE);
}

void deinit()
{
  clrtoeol();
  refresh();
  endwin();
}

void run()
{
  int platform_x, platform_y;
  int ball_x = 0;
  int ball_y = 0;
  getmaxyx(stdscr, platform_y, platform_x);
  platform_x /= 2;
  platform_y -= 5;
  int c;
  while(1)
  {
    usleep(350000);
    timeout(1);
    c = wgetch(stdscr);
    switch(c)
    {
      case KEY_RIGHT:
      {
        platform_x += 3;
        break;
      }
      case KEY_LEFT:
      {
        platform_x -= 3;
        break;
      }
    }

    clear();
    mvprintw(ball_y++, ball_x++, "o");
    mvprintw(platform_y, platform_x, "XXX");
    refresh();
  }
}
