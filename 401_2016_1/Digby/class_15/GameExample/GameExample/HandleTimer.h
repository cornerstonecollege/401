//
//  HandleTimer.h
//  GameExample
//
//  Created by Digby Andrews on 2016-05-17.
//  Copyright © 2016 Digby Andrews. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameScene.h"

@interface HandleTimer : NSObject

@property (nonatomic, weak) GameScene *game;

- (instancetype)initWithGameScene:(GameScene *)game;
- (void)updateTimer: (NSTimer *)timer;

@end
