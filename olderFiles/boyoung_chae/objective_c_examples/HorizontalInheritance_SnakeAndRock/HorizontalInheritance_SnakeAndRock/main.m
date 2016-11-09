//
//  main.m
//  HorizontalInheritance_SnakeAndRock
//
//  Created by Boyoung on 2016-09-12.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Snake.h"
#import "Rock.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        Snake *snake = [[Snake alloc] init];
        
        [snake shake];
        
        if ([snake respondsToSelector:@selector((react))])
        {
            [snake react];
        }
        
        Rock *rock = [[Rock alloc] init];
        
        [rock shake];
        
        if ([rock respondsToSelector:@selector((react))])
        {
            [rock react];
        }
    }
    return 0;
}
