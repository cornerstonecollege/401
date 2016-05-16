//
//  PokemonGrassBase.m
//  PokemonProtocol
//
//  Created by CICCC1 on 2016-05-16.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import "PokemonGrassBase.h"

@implementation PokemonGrassBase

- (instancetype)initWithNickname:(NSString *)nickname level:(NSInteger)level HP:(NSInteger)HP attack:(NSInteger)attack andDefense:(NSInteger)defense
{
    self = [super initWithNickname:nickname level:level HP:HP attack:attack andDefense:defense];
    
    if (self)
    {
        [self.attackPP setObject:[NSMutableArray arrayWithObjects:@15, @15, @70, nil] forKey:@3];
        [self.attackPP setObject:[NSMutableArray arrayWithObjects:@15, @15, @75, nil] forKey:@4];
        [self.attackPP setObject:[NSMutableArray arrayWithObjects:@5, @5, @100, nil] forKey:@5];
    }
    
    return self;
}

- (BOOL)vineWhipWithPokemon:(Pokemon *)pokemonTarget
{
    return [self callAttackWithId:@3 andPokemonTarget:pokemonTarget];
}

- (BOOL)razorLeafWithPokemon:(Pokemon *)pokemonTarget
{
    return [self callAttackWithId:@4 andPokemonTarget:pokemonTarget];
}

- (BOOL)solarBeamWithPokemon:(Pokemon *)pokemonTarget
{
    return [self callAttackWithId:@5 andPokemonTarget:pokemonTarget];
}

@end
