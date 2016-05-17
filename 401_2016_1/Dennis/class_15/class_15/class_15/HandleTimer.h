//
//  HandleTimer.h
//  class_15
//
//  Created by Dennis Pham on 2016-05-17.
//  Copyright © 2016 Dennis Pham. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameScene.h"

@interface HandleTimer : NSObject

@property(nonatomic, weak) GameScene *game;

-(instancetype)initWithGameScene:(GameScene *)game;
-(void) updateTimer:(NSTimer *)timer;

@end
