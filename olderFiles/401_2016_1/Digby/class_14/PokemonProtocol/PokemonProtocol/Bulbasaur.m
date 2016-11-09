//
//  Bulbasaur.m
//  PokemonProtocol
//
//  Created by Digby Andrews on 2016-05-16.
//  Copyright © 2016 Digby Andrews. All rights reserved.
//

#import "Bulbasaur.h"

@implementation Bulbasaur

-(instancetype)initWithNickname:(NSString *)nickname level:(NSInteger)level HP:(NSInteger)HP attack:(NSInteger)attack andDefense:(NSInteger)defense
{
    if (!nickname)
    {
        nickname = @"Bulbasaur";
    }
    
    self = [super initWithNickname:nickname level:level HP:HP attack:attack andDefense:defense];
    return self;
}

@end
