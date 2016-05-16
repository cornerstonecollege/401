//
//  Ekans.m
//  PokemonProtocol
//
//  Created by CICCC1 on 2016-05-16.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import "Ekans.h"

@implementation Ekans

- (instancetype)initWithNickname:(NSString *)nickname level:(NSInteger)level HP:(NSInteger)HP attack:(NSInteger)attack andDefense:(NSInteger)defense
{
    if (!nickname)
        nickname = @"Ekans";
    
    self = [super initWithNickname:nickname level:level HP:HP attack:attack andDefense:defense];
    
    return self;
}

@end
