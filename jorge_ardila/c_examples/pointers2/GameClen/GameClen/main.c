//
//  main.c
//  GameClen
//
//  Created by jorgelocal on 2016-08-29.
//  Copyright © 2016 jorgelocal. All rights reserved.
//
#include <ncurses.h>
#include <unistd.h>
#include <string.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

//#define DELAY 35000

//Functions for the bar

void runBar();
void init();
void deinit();


// Main function to call the operations
int main(int argc, char *argv[]) {
    
    // call the functions for the bar
    init();
    runBar();

    deinit();
    
    return 0;
}

//The function for the bar to run
void runBar()
{
    // the bar 1
    int platformX;
    int platformY;
    
    // second bar
    int platformX2;
    int platformY2;
    
    // the ball
    int ballX = 0;
    int ballY = 0;
    int directionBallX = 1;
    int directionBallY = 1;
    
    // get the max of the screen to know how many bars and columns it has
    getmaxyx(stdscr, platformY, platformX);
    getmaxyx(stdscr, platformY2, platformX2);
    // new variables for the max limit of the screen
    int max_y = platformY;
    int max_x = platformX;
    
    // initialize the platform variables from the initial point of it
    platformX /= 2;
    platformY -= 2;
    
    // second bar
    platformX2 /=2;
    platformY2 -=23;
    
    char *designPlatform = "|TTTTTTTTT|";
    char *designPlatform2 = "|ZZZZZZZZZ|";
    
    // new variable that recognizes the key that the player is pressing for controlers
    int control;
    
    bool isGameOver = false;
    // the while loop that controls the keys and movement of the bar
    while (true)
    {
        usleep(100000);
        timeout(1);
        control = wgetch(stdscr);
        //a switch to tell the bar where to go when press the keys
        switch (control)
        {
        case KEY_RIGHT:
            {
                platformX +=3;
                platformX2 +=3;
                break;
            }
        case KEY_LEFT:
            {
                platformX -=3;
                platformX2 -=3;
                break;
            }
        }
        
        //if to program the bouncing of the ball in the platform
        //is only one if that contains the conditionals for the ball in X and in Y.
        if (ballX + directionBallX >= platformX
            && ballX + directionBallX <= platformX + strlen(designPlatform)
            && ballY + directionBallY == platformY) {
            directionBallY *= -1;
            //conditionals for the limits of the screen.
        }else if (ballX + directionBallX >= platformX2
             && ballX + directionBallX <= platformX2 + strlen(designPlatform2)
             && ballY + directionBallY == platformY2) {
            directionBallY *= -1;
            
            // this random didnt work, try to locate it on the if that controls only the platforms.
            //time_t t;
            //srand((unsigned) time(&t));
            //int rX = rand() % 2;
            //if(rX)
            //{
            //    directionBallX *= -1;
            //}
            //directionBallX *= -1;
            //conditionals for the limits of the screen.
        }
        //walls
        else if (ballX + directionBallX >= max_x || ballX + directionBallX <= 0)
        {
            directionBallX *= -1;
            
        }
        else if (ballY + directionBallY <= 0 || ballY + directionBallY >= max_y){
            isGameOver = true;
            break;
        }
    
        
        
        // new variables to control the direction of the ball
        ballX += directionBallX;
        ballY += directionBallY;
    
        // final printing
        clear();
        mvprintw(ballY, ballX, "O");
        //this is the way to initialize a char to make the bar appear is not working in mac
        //char str[4] = { 219, 219, 219, 0 };
        mvprintw(platformY, platformX, designPlatform);
        mvprintw(platformY2, platformX2, designPlatform2);
        refresh();
    }
    
    clear();
    if (isGameOver) {
        char *gameOverStr = "Game Over";
        mvprintw(max_y / 2, (int)(max_x - strlen(gameOverStr)) / 2, gameOverStr);
        refresh();
        timeout(-1);
        wgetch(stdscr);
    }
    
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

