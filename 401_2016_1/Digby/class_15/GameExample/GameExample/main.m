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
#import "HandleItems.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        HandleMonster *handleMonster = [HandleMonster new];
        HandleItems *handleItems = [HandleItems new];
        GameScene *game = [GameScene new];
        
        __weak HandleItems *weakHandleItems = handleItems;
        __weak HandleMonster *weakHandleMonster = handleMonster;
        
        game.arrDelegate = @[weakHandleMonster, handleItems];
        
        HandleTimer *handleTimer = [[HandleTimer alloc]initWithGameScene:game];
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:handleTimer selector:@selector(updateTimer:) userInfo:nil repeats:YES];
        
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
