//
//  main.m
//  GameExample
//
//  Created by CICCC1 on 2016-05-17.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameScene.h"
#import "HandleMonsters.h"
#import "HandleItems.h"
#import "HandleTimer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        HandleMonsters *handleMonsters = [HandleMonsters new];
        HandleItems *handleItems = [HandleItems new];
        GameScene *game = [GameScene new];
        
        __weak HandleItems *weakHandleItems = handleItems;
        __weak HandleMonsters *weakHandleMonsters = handleMonsters;
        
        game.arrDelegate = @[weakHandleMonsters, weakHandleItems];
        
        HandleTimer *handleTimer = [[HandleTimer alloc] initWithGameScene:game];
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:handleTimer selector:@selector(updateTimer:) userInfo:nil repeats:YES];
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
