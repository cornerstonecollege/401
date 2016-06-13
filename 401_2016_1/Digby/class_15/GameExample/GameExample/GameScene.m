//
//  GameScene.m
//  GameExample
//
//  Created by Digby Andrews on 2016-05-17.
//  Copyright © 2016 Digby Andrews. All rights reserved.
//

#import "GameScene.h"

@implementation GameScene

- (void)gameStart
{
    NSLog(@"===============Game did start!===================");
    
    if (self.arrDelegate && [self.arrDelegate count] > 0)
    {
        for (id<GameSceneDelegate> delegate in self.arrDelegate)
        {
            [delegate gameDidStart];
        }
    }
}

-(void)gameUpdate
{
    if (self.arrDelegate && [self.arrDelegate count] > 0)
    {
        
        for (id<GameSceneDelegate> delegate in self.arrDelegate)
        {
            [delegate gameDidUpdate];
        }
    }
}



- (void)gameStop
{
     NSLog(@"===============Game did End!===================");
    
    for (id<GameSceneDelegate> delegate in self.arrDelegate)
    {
        if ([delegate respondsToSelector:@selector(gameDidEnd)])
        {
            [delegate gameDidEnd];
        }
    }
}

@end
