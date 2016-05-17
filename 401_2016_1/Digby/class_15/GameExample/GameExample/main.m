//
//  main.m
//  GameExample
//
//  Created by Digby Andrews on 2016-05-17.
//  Copyright © 2016 Digby Andrews. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameScene.h"
#import "HandleMonster.h"
#import "HandleTimer.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        HandleMonster *handleMonster = [HandleMonster new];
        GameScene *game = [GameScene new];
        game.delegate = handleMonster;

        HandleTimer *handleTimer = [[HandleTimer alloc]initWithGameScene:game];
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:handleTimer selector:@selector(updateTimer:) userInfo:nil repeats:YES];
        
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
