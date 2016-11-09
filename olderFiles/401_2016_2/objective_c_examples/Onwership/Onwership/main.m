//
//  main.m
//  Onwership
//
//  Created by Luiz on 2016-09-09.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Circle.h"
#import "Triangle.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
//        Circle *circle = [[Circle alloc] init];
//        __unused Circle *circle2 = circle;
//        circle = nil;
//        
//        Circle *circle3 = [[Circle alloc] init];
//        __unused __weak Circle *circle4 = circle3;
//        circle3 = nil;
        
        Circle *circle = [[Circle alloc] init];
        Triangle *triangle = [[Triangle alloc] init];
        circle.triangle = triangle;
        triangle = nil;
        [circle setX:2 andY:3];
    }
    return 0;
}
