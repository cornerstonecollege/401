#define C_GCC 0
#define C_MSVC 1
#define DELAY 10000

/* Set COMPILER macro to either C_GCC or C_MSVC */
#define COMPILER C_MSVC

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <ctype.h>
#include <signal.h>
#include <time.h>

#include <unistd.h>

#if COMPILER == C_MSVC
    #include "curses.h"
#else
    #include <ncurses/curses.h>
#endif

#define SCREENWIDTH  80
#define SCREENHEIGHT 60

#define PI 3.141592654
#define DEGtoRAD(A) (A * PI/180)  /* Degrees to radians conversion */

/*Prototypes */

void textcolor(int color);
void loadcolorpalette(void);
void buildMonster();

void init();
void run();
void deinit();

 
int monsterRoundX;
int monsterRoundY;
 
    int max_x, max_y;
 int flag=0;


int main(){

   
    init();

    ////////////INICIO///////////////


    double angle;   /* Angle in degrees */
    double R = 10.; /* Maximum amplitude to fit within 80x24 window */
    int x, y;       /* Coordinates */
    int mcolor = 0; /* Marker color */
    int ch;         /* Input response */
    int Done = FALSE;
    int flag=0;

    /* Set up curses */
    signal(SIGINT, deinit); /* arrange interrupts to terminate */
    initscr(); /* initialize the curses library */

    keypad(stdscr, TRUE); /* enable keyboard mapping */
    nodelay(stdscr, TRUE); /* causes getch() to be a non-blocking call */
    nonl(); /* tell curses not to do NL->CR/NL on output */
    cbreak(); /* take input chars one at a time, no wait for \n */
    noecho(); /* do not echo input */
    curs_set(0); /* set cursor visibility: 0=hide, 1=show */

    //run();
    loadcolorpalette(); /* define color index values */
    //clear();

   
   

    //usleep(DELAY);
    clear(); /* Clear the screen */

    int max_x, max_y;
    getmaxyx(stdscr, max_y, max_x);

    int fire_x = -1, fire_y = -1;
    int spaceship_x = 3;
    int spaceship_y = (max_y - 5) / 2;


/*  mvprintw(monsterRoundX, monsterRoundY, " /-\\ ");
mvprintw(monsterRoundX+1, monsterRoundY, " -_-  ");
mvprintw(monsterRoundX+2, monsterRoundY, "'---' ");
mvprintw(monsterRoundX+3, monsterRoundY, " _0_  ");
*/
    

    textcolor(4);

    mvprintw(3,1,"STATE 1 %d  \n\n",monsterRoundX,monsterRoundY);
    refresh();

int lineMonsterX_1;

buildMonster();
    while (!Done)
    {

   




        if (angle >= 360)
        {
            angle = 0;
            mcolor = ((mcolor + 1) % 7) + 1;
        }
        else
        {
            angle += 2;
        }

        textcolor(mcolor);

        for (int theAngle = 0; theAngle <= angle; theAngle += 2)
        {
            
            x = (int) (angle / 360 * (max_x - 1)); /* Scale to screen width */
            y = (int) (R * sin(DEGtoRAD(angle))) + (max_y / 2);
            
            move(y, x);

            printw("%c", '.');

            refresh();
            
        }
        

        textcolor(COLOR_WHITE);
        mvprintw(spaceship_y, spaceship_x, "=");
        mvprintw(spaceship_y + 1, spaceship_x, "==");
        mvprintw(spaceship_y + 2, spaceship_x, "=== ");
        mvprintw(spaceship_y + 3, spaceship_x, "==");
        mvprintw(spaceship_y + 4, spaceship_x, "=");

        if (fire_y > 0) {
            if (fire_x > max_x){
                fire_y = -1;
                fire_x = -1;
            } else {
                mvprintw(fire_y, fire_x, "   ");  
                fire_x += 3;
                mvprintw(fire_y, fire_x, "---");
            }
        }


   //mvprintw(fire_y, fire_x, "--- %d",fire_x);

   //mvprintw(fire_y, fire_x, "--- %d",fire_x);
    textcolor(4);
    mvprintw(4,1,"Velocity FIRE X Y:  %d %d  \n\n",fire_x ,fire_y);
    mvprintw(5,1,"Posicion Monster  %d %d  \n\n",monsterRoundX,monsterRoundY);
    refresh();






//buildMonster();
//flag=0;




        mvprintw(0, 0, "Command (S=Sine, C=Cosine, Arrow=Change Color, Q=Quit)? ");
        usleep(DELAY);
        refresh();

        timeout(1);
        ch = toupper(getch()); /* Get response without waiting for newline */

        if (ch == 'Q')
        {
            Done = TRUE;
        }
        else if (ch == 'S' || ch == 'C')
        {
            clear();
            attron(A_BOLD);
            textcolor(mcolor);

            for (angle = 0; angle <= 360; angle += 10)
            {
                x = (int) (angle / 360 * (SCREENWIDTH - 1)); /* Scale to screen width */

                if (ch == 'S')
                    y = (int) (R * sin(DEGtoRAD(angle))) + (SCREENHEIGHT / 2);
                else
                    y = (int) (R * cos(DEGtoRAD(angle))) + (SCREENHEIGHT / 2);

                move(y, x);
           
                printw("%c", 'O');
            }
            refresh();
        }
        else if (ch == KEY_LEFT) 
        {
            mvprintw(spaceship_y, spaceship_x, " ");
            mvprintw(spaceship_y + 1, spaceship_x, "  ");
            mvprintw(spaceship_y + 2, spaceship_x, "   ");
            mvprintw(spaceship_y + 3, spaceship_x, "  ");
            mvprintw(spaceship_y + 4, spaceship_x, " ");
            // mvprintw(spaceship_y+2, spaceship_x+5, "   ");
            spaceship_x -= 3;
        }
        else if (ch == KEY_RIGHT) 
        {
            mvprintw(spaceship_y, spaceship_x, " ");
            mvprintw(spaceship_y + 1, spaceship_x, "  ");
            mvprintw(spaceship_y + 2, spaceship_x, "   ");
            mvprintw(spaceship_y + 3, spaceship_x, "  ");
            mvprintw(spaceship_y + 4, spaceship_x, " ");
             //mvprintw(spaceship_y+2, spaceship_x+5, "   ");
            spaceship_x += 3;
        }
        else if (ch == KEY_UP) 
        {
            mvprintw(spaceship_y, spaceship_x, " ");
            mvprintw(spaceship_y + 1, spaceship_x, "  ");
            mvprintw(spaceship_y + 2, spaceship_x, "   ");
            mvprintw(spaceship_y + 3, spaceship_x, "  ");
            mvprintw(spaceship_y + 4, spaceship_x, " ");
            mvprintw(spaceship_y+2, spaceship_x+5, "   ");
            spaceship_y -= 3;

        }
        else if (ch == KEY_DOWN) 
        {
            mvprintw(spaceship_y, spaceship_x, " ");
            mvprintw(spaceship_y + 1, spaceship_x, "  ");
            mvprintw(spaceship_y + 2, spaceship_x, "   ");
            mvprintw(spaceship_y + 3, spaceship_x, "  ");
            mvprintw(spaceship_y + 4, spaceship_x, " ");

            mvprintw(spaceship_y+2, spaceship_x+5, "   ");
            spaceship_y += 3;
        } 

        else if (ch == 32) 
        {
            if(fire_y > 0){
                mvprintw(fire_y, fire_x, "   ");
            }
            
            fire_y = spaceship_y + 2;
            fire_x = spaceship_x + 5;
            mvprintw(fire_y, fire_x, "---");

mvprintw(monsterRoundX, monsterRoundY, "       ");
mvprintw(monsterRoundX+1, monsterRoundY, "       ");
mvprintw(monsterRoundX+2, monsterRoundY, "       ");
mvprintw(monsterRoundX+3, monsterRoundY, "       ");
usleep(20000);
buildMonster();
        }






        textcolor(COLOR_CYAN);

        mvprintw(25, 35, "Catch Me If you Can");





    }






    //////////FIN//////////
    deinit();
    return 0;
}



void init()

{
    initscr();
    noecho();
    curs_set(false);
}

void run(){

        int x =0, y= 0;
    // mvprintw(y,x,"X");
    //getmaxyx(stdscr, max_y, max_x);
    
    
    
    while(1) {
        clear();
        
         //mvprintw(pow(y,2),pow(x,2),"0");
        mvprintw(y,x,"0");
        refresh();
        
       // usleep(DELAY);
        
        x++;
        y++;
    }
}
    
    void deinit(){
        
        clear();
        clrtoeol();
        refresh();
        endwin();
        //exit(0);
    }





/* Function sets the color attribute for text */
void textcolor( int color)
{
    attrset(COLOR_PAIR(color));
}


/* Function defines the mapping of the color palette */
void loadcolorpalette (void)
{
    if (has_colors())
    {
        start_color();
        /* Index, Foreground color, Background color */
#if COMPILER == C_MSVC
        init_pair(4, COLOR_RED, COLOR_BLACK);
        init_pair(2, COLOR_GREEN, COLOR_BLACK);
        init_pair(6, COLOR_YELLOW, COLOR_BLACK);
        init_pair(1, COLOR_BLUE, COLOR_BLACK);
        init_pair(5, COLOR_MAGENTA, COLOR_BLACK);
        init_pair(3, COLOR_CYAN, COLOR_BLACK);
        init_pair(7, COLOR_WHITE, COLOR_BLACK);
#else
        init_pair(1, COLOR_RED, COLOR_BLACK);
        init_pair(2, COLOR_GREEN, COLOR_BLACK);
        init_pair(3, COLOR_YELLOW, COLOR_BLACK);
        init_pair(4, COLOR_BLUE, COLOR_BLACK);
        init_pair(5, COLOR_MAGENTA, COLOR_BLACK);
        init_pair(6, COLOR_CYAN, COLOR_BLACK);
        init_pair(7, COLOR_WHITE, COLOR_BLACK);
#endif
    }
}



void buildMonster(){



 time_t t;
    srand((unsigned) time(&t));


    // monsterRoundX=rand() % (max_x-4);
    // monsterRoundY=rand() % (max_y-4);

     monsterRoundX=rand() % (40);
     monsterRoundY=rand() % (40); 

if(monsterRoundX<10){monsterRoundX=monsterRoundX+10;}
if(monsterRoundY<10){monsterRoundY=monsterRoundY+10;}

mvprintw(monsterRoundX, monsterRoundY, " /-\\ ");
mvprintw(monsterRoundX+1, monsterRoundY, " -_-  ");
mvprintw(monsterRoundX+2, monsterRoundY, "'---' ");
mvprintw(monsterRoundX+3, monsterRoundY, " _0_  ");
flag=0;

textcolor(4);
mvprintw(3,1,"tag 2 %d  %d\n\n",monsterRoundX,monsterRoundY);
refresh();
}

   /* while(1){
        clear();
        
        refresh();
        
        usleep(DELAY);
        
        mvprintw(ball_y, ball_x, "0");
    }*/
    
    //
    
    /*while(1) {
       clear();
       
       mvprintw(y,x,"0");
        
        
       refresh();
       
        usleep(DELAY);
        next_x=x+direction;
        
        if(next_x >= max_x || next_x < 0)
            
        {
            direction*=-1;
            
        
        }
        
        else {
            x+= direction;
        }
    }*/
 

    
    /*
     usleep(DELAY);
     x++;
     
    endwin();*/
