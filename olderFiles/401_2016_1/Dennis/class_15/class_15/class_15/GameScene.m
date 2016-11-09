//
//  GameScene.m
//  class_15
//
//  Created by Dennis Pham on 2016-05-17.
//  Copyright © 2016 Dennis Pham. All rights reserved.
//

#import "GameScene.h"

@implementation GameScene

-(void)gameStart
{
    NSLog(@"========== Game Did Start!=========");
    if (self.arrDelegate && [self.arrDelegate count] > 0)
    {
        for(id<GameSceneDelegate> delegate in self.arrDelegate)
        {
            [delegate gameDidStart];
        }
    }
}

-(void)gameUpdate
{
    if(self.arrDelegate && [self.arrDelegate count] >0)
    {
        for(id<GameSceneDelegate> delegate in self.arrDelegate)
        {
            [delegate gameDidUpdate];
        }
    }
    
}

-(void)gameStop
{
     NSLog(@"========== Game Did Stop!=========");
    
    
    if(self.arrDelegate && [self.arrDelegate count]>0)
    {
        for(id<GameSceneDelegate> delegate in self.arrDelegate)
        {
            if([delegate respondsToSelector:@selector(gameDidEnd)])
            {
                [delegate gameDidEnd];
            }
        }

    }
    
}
@end
