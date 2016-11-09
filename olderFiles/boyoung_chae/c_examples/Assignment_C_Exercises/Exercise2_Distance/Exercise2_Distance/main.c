//
//  main.c
//  Exercise2_Distance
//
//  Created by Boyoung on 2016-08-30.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void getDistance(double x1, double y1, double x2, double y2);
double distance;

int main(int argc, const char * argv[])
{
    double x1, y1, x2, y2;
    
    printf("===== Exercise 2 =====\n");
    printf("Enter two points within a plane to get their distance.\n");
    printf("*Point1(x1 y1): ");
    scanf("%lf %lf", &x1, &y1);
    printf("*Point2(x2 y2): ");
    scanf("%lf %lf", &x2, &y2);
    
    getDistance(x1, y1, x2, y2);
    printf("--> The distance bwtween two points is %lf.\n", distance);
    
    return 0;
}

void getDistance(double x1, double y1, double x2, double y2)
{
    distance = sqrt((x2-x1)*(x2-x1) + (y2-y1)*(y2-y1));
}
