//
//  main.m
//  Exercise5_Description
//
//  Created by Boyoung on 2016-09-15.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyPoint.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSLog(@"=== Exercise 5 ===");
        NSLog(@"Create 5 points and print them out using the method description!");
        
        MyPoint *point1 = [[MyPoint alloc] init];
        [point1 setThePointX:@1.0 Y:@1.2];
        
        MyPoint *point2 = [[MyPoint alloc] init];
        [point2 setThePointX:@2.1 Y:@2.3];
        
        MyPoint *point3 = [[MyPoint alloc] init];
        [point3 setThePointX:@3.3 Y:@3.4];
        
        MyPoint *point4 = [[MyPoint alloc] init];
        [point4 setX:@4.6];
        [point4 setY:@4.7];
        
        MyPoint *point5 = [[MyPoint alloc] init];
        [point5 setX:@5.8];
        [point5 setY:@5.9];
        
        NSLog(@"[Point1] %@", point1);
        NSLog(@"[Point2] %@", point2);
        NSLog(@"[Point3] %@", point3);
        NSLog(@"[Point4] %@", point4);
        NSLog(@"[Point5] %@", point5);
    }
    return 0;
}
