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


void init();
void run();
void deinit();

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
    int platform_x,
        platform_y;
    
    int ball_x = 0,
        ball_y = 0;
    
    int max_x = 0,
        max_y = 0;
    
    int next_x = 0,
        next_y = 0;
    
    int directionX = 1,
        directionY = 1;
    
    
    getmaxyx(stdscr, platform_y, platform_x);
    
    platform_x /= 2;
    platform_y -= 5;
    
    char * desigPlataform = "xxx";
    
    ball_x = max_x / 2;
    ball_y = max_y / 2;
    
    
    int c;
    while(1)
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
        
        next_x = ball_x + directionX;
        next_y = ball_y + directionY;
        
        
        // if the ball touch the plataform
        if (ball_x >= platform_x
            && ball_x <= platform_x + strlen(desigPlataform)
            && ball_y == platform_y) {
            directionY *= -1;
        }
        
        
        if (next_x >= max_x || next_x < 0)
        {
            break;
            
        }
        
        if (next_y >= max_y || next_y < 0) {
            directionY *= -1;
        } else {
            ball_y += directionY;
        }

        
        
        clear();
        mvprintw(ball_y++, ball_x++, "o");
        mvprintw(platform_y, platform_x, desigPlataform);
        refresh();
    }
}


