//
//  main.m
//  Blocks_Screen
//
//  Created by Boyoung on 2016-09-13.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Screen.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        MyPolygon *circle = [[MyPolygon alloc] init];
        circle.x = 0;
        circle.y = 0;
        
        NSLog(@"%@", circle);
        
        MyPolygon *triangle= [[MyPolygon alloc] init];
        triangle.x = 1;
        triangle.y = 1;
        
        NSLog(@"%@", triangle);
        
        Screen *screen = [[Screen alloc] initWithCircle:circle AndTriangle:triangle];
        [screen moveRandomWithBlock:8 Y:10 andBlock:^void(int a, int b)
        {
            NSLog(@"Random %i %i", a, b);
        }];
        
        [screen moveCircleToX:5 Y:7 andBlock:^void(int a, int b) {
            screen.triangle.x += a;
            screen.triangle.y += b;
        }];
    }
    return 0;
}
