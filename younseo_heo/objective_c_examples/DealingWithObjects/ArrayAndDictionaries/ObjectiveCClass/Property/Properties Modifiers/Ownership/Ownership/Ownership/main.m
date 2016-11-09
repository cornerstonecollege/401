//
//  main.m
//  Ownership
//
//  Created by younseolocal on 2016-09-09.
//  Copyright © 2016 younseolocal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Triangle.h"
#import "Circle'.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        Circle *circle = [[Circle alloc] init];
        Circle *circle2 = circle;
        circle = nil;
    }
    return 0;
}
