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
    if (self.delegate){
        [self.delegate gameDidStart];
    }
}

-(void)gameUpdate
{
    if(self.delegate)
    {
        [self.delegate gameDidUpdate];
    }
    
}

-(void)gameStop
{
     NSLog(@"========== Game Did Stop!=========");
    if(self.delegate && [self.delegate respondsToSelector:@selector(gameDidEnd)])
    {
        [self.delegate gameDidEnd];
        
    }
    
}
@end
