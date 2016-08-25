#include <ncurses.h>
#include <unistd.h>

#define DELAY 35000

int main(int argc, char *argv[]) {
  int x = 0,
      y = 0;

  int max_x = 0,
      max_y = 0;

  int next_x = 0;
  int next_y = 0;
 
  int directionX = 1;
  int directionY = 1;

  initscr();
  noecho();
  curs_set(FALSE);

  getmaxyx(stdscr, max_y, max_x);

  x = max_x / 2;
  y = max_y / 2;

  while (1) {
    getmaxyx(stdscr, max_y, max_x);
    clear();
    
    mvprintw(y, x, "o");
    refresh();

    usleep(DELAY);

    next_x = x + directionX;
    next_y = y + directionY;

    if (next_x >= max_x || next_x < 0) {
      directionX *= -1;
    } else {
      x += directionX;
    }

    if (next_y >= max_y || next_y < 0) {
      directionY *= -1;
    } else {
      y += directionY;
    }
  }

  endwin();

  return 0;
}
