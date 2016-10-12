//
//  HandleTimer.m
//  GameExample
//
//  Created by CICCC1 on 2016-05-17.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import "HandleTimer.h"

@interface HandleTimer ()

@property (nonatomic) NSInteger counter;

@end

@implementation HandleTimer

- (instancetype)initWithGameScene:(GameScene *)game
{
    self = [super init];
    if (self)
    {
        _game = game;
        [_game gameStart];
    }
    
    return self;
}

- (void)updateTimer:(NSTimer *)timer
{
    if (++self.counter > 10)
    {
        [timer invalidate];
        [self.game gameStop];
        return;
    }
    
    [self.game gameUpdate];
}

@end
