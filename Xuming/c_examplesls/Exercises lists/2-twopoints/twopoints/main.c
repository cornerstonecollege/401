//
//  main.c
//  twopoints
//
//  Created by Nicholas on 2016-08-31.
//  Copyright © 2016 Nicholas. All rights reserved.
//

#include<stdio.h>
#include<math.h>

int main()
{
    float x1,x2,y1,y2,length;
    printf("please input two points：x1 y1 x2 y2 \n");
    scanf("%f %f %f %f",&x1,&y1,&x2,&y2);
    length = sqrt(pow((y2 - y1),2) + pow((x2 - x1),2));
    printf("Their distance is：%f\n",length);
    return 0;
}