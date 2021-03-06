//
//  main.m
//  class_15
//
//  Created by Dennis Pham on 2016-05-17.
//  Copyright © 2016 Dennis Pham. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameScene.h"
#import "HandleMonser.h"
#import "HandleItem.h"
#import "HandleTimer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        HandleMonser *handleMonsters = [HandleMonser new];
        HandleItem *handleItem = [HandleItem new];
        GameScene *game = [GameScene new];
        
        
        __weak HandleItem *weakHandleItem = handleItem;
        __weak HandleMonser *weakHandleMonsters = handleMonsters;
        
        game.arrDelegate = @[weakHandleMonsters,weakHandleItem];
        //[game gameStart];
        //[game gameStop];

        
       HandleTimer *handleTimer = [[HandleTimer alloc] initWithGameScene: game];
        __unused NSTimer *timer= [NSTimer scheduledTimerWithTimeInterval:1.0 target:handleTimer selector:@selector(updateTimer:) userInfo:(nil) repeats:(YES)];
        
        [[NSRunLoop currentRunLoop] run];
    
    
    }
    return 0;
}
