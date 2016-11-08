//
//  main.c
//  ex2
//
//  Created by SG on 2016-09-02.
//  Copyright © 2016 SG. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

struct Plane {
    int x, y;
};


double dyst(struct Plane a, struct Plane b)
{
    double odl;
    odl = sqrt((a.x - b.x) * (a.x - b.x) + (a.y-b.y) *(a.y-b.y));
    return odl;
}



int main()
{
    struct Plane a, b;
    printf("Enter coordinate of Plane 1: ");
    scanf("%d %d", &a.x, &a.y);
    printf("Enter coordinate of Plane 2: ");
    scanf("%d %d", &b.x, &b.y);
    printf("Distance between Plane 1 and Plane 2: %lf\n", dyst(a, b));
    
    
    return 0;
}