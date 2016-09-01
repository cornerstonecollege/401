//
//  main.c
//  BrickGame
//
//  Created by Christian on 2016-08-29.
//  Copyright © 2016 Christian. All rights reserved.
//
#include <ncurses.h>
#include <unistd.h>
#include <string.h>
#include <stdbool.h>


void init();
void run();
void deinit();

struct _Bar
{
    int x;
    int y;
    bool isVisible;

};

typedef struct _Bar Bar;



void init()
{
    initscr();
    noecho();
    cbreak();
    keypad(stdscr, TRUE);
    curs_set(FALSE);
}


int main()
{
    init();
    run();
    deinit();
    return 0;
    
}

void deinit()
{
    clrtoeol();
    refresh();
    endwin();
}


void run()
{
    int platform_x;
    int platform_y;
    
    int ball_x = 0;
    int ball_y = 0;
    
    int max_x = 0;
    int max_y = 0;
    
    int directionX = 1;
    int directionY = 1;
    
    Bar arrayBars[20];
    arrayBars[0].x = 3;
    arrayBars[0].y = 2;
    arrayBars[0].isVisible = true;
    arrayBars[1].x = 7;
    arrayBars[1].y = 2;
    arrayBars[1].isVisible = true;
    arrayBars[2].x = 11;
    arrayBars[2].y = 2;
    arrayBars[2].isVisible = true;
    arrayBars[3].x = 15;
    arrayBars[3].y = 2;
    arrayBars[3].isVisible = true;
    arrayBars[4].x = 19;
    arrayBars[4].y = 2;
    arrayBars[4].isVisible = true;
    arrayBars[5].x = 23;
    arrayBars[5].y = 2;
    arrayBars[5].isVisible = true;
    arrayBars[6].x = 27;
    arrayBars[6].y = 2;
    arrayBars[6].isVisible = true;
    arrayBars[7].x = 31;
    arrayBars[7].y = 2;
    arrayBars[7].isVisible = true;
    arrayBars[8].x = 35;
    arrayBars[8].y = 2;
    arrayBars[8].isVisible = true;
    arrayBars[9].x = 39;
    arrayBars[9].y = 2;
    arrayBars[9].isVisible = true;
    arrayBars[10].x = 43;
    arrayBars[10].y = 2;
    arrayBars[10].isVisible = true;
    arrayBars[11].x = 48;
    arrayBars[11].y = 2;
    arrayBars[11].isVisible = true;
    arrayBars[12].x = 52;
    arrayBars[12].y = 2;
    arrayBars[12].isVisible = true;
    arrayBars[13].x = 56;
    arrayBars[13].y = 2;
    arrayBars[13].isVisible = true;
    arrayBars[14].x = 60;
    arrayBars[14].y = 2;
    arrayBars[14].isVisible = true;
    arrayBars[15].x = 64;
    arrayBars[15].y = 2;
    arrayBars[15].isVisible = true;
    arrayBars[16].x = 68;
    arrayBars[16].y = 2;
    arrayBars[16].isVisible = true;
    arrayBars[17].x = 72;
    arrayBars[17].y = 2;
    arrayBars[17].isVisible = true;
    arrayBars[18].x = 76;
    arrayBars[18].y = 2;
    arrayBars[18].isVisible = true;
    arrayBars[19].x = 80;
    arrayBars[19].y = 2;
    arrayBars[19].isVisible = true;
    
    
    getmaxyx(stdscr, max_y, max_x);

    platform_x = max_x / 2;
    platform_y = max_y - 5;
    bool isGameOver = false;
    
    char *desigPlataform = "xxxx";
    char *designBar = "===";
    
    int c;
    while(true)
    {
        usleep(100000);
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
        
        
        // if the ball touch the plataform
        if (ball_x + directionX >= platform_x
            && ball_x + directionX <= platform_x + strlen(desigPlataform)
            && ball_y + directionY == platform_y) {
            directionY *= -1;
        }
        else if (ball_y + directionY < 0)
        {
            directionY *= -1;
        }
        else if (ball_x >= max_x || ball_x < 0)
        {
            directionX *= -1;
        }
        else if (ball_y > max_y)
        {
            isGameOver = true;
            break;
        }
        
        for (int i = 0; i < 20; i++) {
            if (arrayBars[i].isVisible) {
                if (ball_x + directionX >= arrayBars[i].x
                    && ball_x + directionX <= arrayBars[i].x + strlen(designBar)
                    && ball_y + directionY == arrayBars[i].y) {
                    arrayBars[i].isVisible = false;
                    directionX *= -1;
                    directionY *= -1;
                }
            }
        }
        
        ball_x = ball_x + directionX;
        ball_y = ball_y + directionY;
        
        
        clear();
        mvprintw(ball_y, ball_x, "o");
        mvprintw(platform_y, platform_x, desigPlataform);
        for (int i = 0; i < 20; i++) {
            if (arrayBars[i].isVisible) {
                mvprintw(arrayBars[i].y, arrayBars[i].x, designBar);
            }
        }
        refresh();
    }
    
    clear();
    if (isGameOver) {
        mvprintw(max_y / 2, max_x / 2, "Game Over");
        refresh();
        timeout(-1);
        wgetch(stdscr);
    }
}


