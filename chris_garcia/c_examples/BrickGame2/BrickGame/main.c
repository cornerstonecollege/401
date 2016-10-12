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
#include <stdlib.h>
#include <time.h>

#define N_BARS 60


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
    
    Bar arrayBars[N_BARS];
    
    int barY = 2;

  
    for (int row = 0; row < 3; row++)
    {
        int barX = 3;
        
        for (int col = 0; col < 20; col++)
        {
            int newI = (row * 20) + col;
            arrayBars[newI].x = barX;
            arrayBars[newI].y = barY;
            arrayBars[newI].isVisible = true;
            
            barX += 4;
        }
        
        barY += 2;
    }
    
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
            time_t t;
            srand((unsigned) time(&t));
            int rX = rand() % 2;
            if (rX) {
                directionX *= -1;
            }
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
        
        for (int i = 0; i < N_BARS; i++) {
            if (arrayBars[i].isVisible) {
                if (ball_x + directionX >= arrayBars[i].x
                    && ball_x + directionX <= arrayBars[i].x + strlen(designBar)
                    && ball_y + directionY == arrayBars[i].y) {
                    arrayBars[i].isVisible = false;
                    
                    time_t t;
                    srand((unsigned) time(&t));
                    int rX = rand() % 2;
                    if (rX) {
                        directionX *= -1;
                    }
                    
                    directionY *= -1;
                }
            }
        }
        
        ball_x = ball_x + directionX;
        ball_y = ball_y + directionY;
        
        
        clear();
        mvprintw(ball_y, ball_x, "o");
        mvprintw(platform_y, platform_x, desigPlataform);
        for (int i = 0; i < N_BARS; i++) {
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


