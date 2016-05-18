//
//  GameScene.m
//  GameExample
//
//  Created by CICCC1 on 2016-05-17.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import "GameScene.h"

@implementation GameScene

- (void)gameStart
{
    NSLog(@"=============== Game did start! ===============");
    
    // gameDidStart is required
    if (self.arrDelegate && [self.arrDelegate count] > 0)
    {
        for(id<GameSceneDelegate> delegate in self.arrDelegate)
        {
            [delegate gameDidStart];
        }
    }
}

- (void)gameUpdate
{
    if (self.arrDelegate &&[self.arrDelegate count] > 0)
    {
        for(id<GameSceneDelegate> delegate in self.arrDelegate)
        {
            [delegate gameDidUpdate];
        }
    }
}

- (void)gameStop
{
    NSLog(@"=============== Game did end! ===============");
    
    // gameDidEnd is optional
    if (self.arrDelegate && [self.arrDelegate count] > 0)
    {
        for (id<GameSceneDelegate> delegate in self.arrDelegate)
        {
            if ([delegate respondsToSelector:@selector(gameDidEnd)])
            {
                [delegate gameDidEnd];
            }
        }
    }
}

@end
