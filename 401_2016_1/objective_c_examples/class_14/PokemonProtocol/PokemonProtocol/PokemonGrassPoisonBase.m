//
//  PokemonGrassPoisonBase.m
//  PokemonProtocol
//
//  Created by CICCC1 on 2016-05-16.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import "PokemonGrassPoisonBase.h"

@implementation PokemonGrassPoisonBase

- (instancetype)initWithNickname:(NSString *)nickname level:(NSInteger)level HP:(NSInteger)HP attack:(NSInteger)attack andDefense:(NSInteger)defense
{
    self = [super initWithNickname:nickname level:level HP:HP attack:attack andDefense:defense];
    
    if (self)
    {
        [self.attackPP setObject:[NSMutableArray arrayWithObjects:@15, @15, @75, nil] forKey:@3];
        [self.attackPP setObject:[NSMutableArray arrayWithObjects:@15, @15, @80, nil] forKey:@4];
        [self.attackPP setObject:[NSMutableArray arrayWithObjects:@5, @5, @105, nil] forKey:@5];
        [self.attackPP setObject:[NSMutableArray arrayWithObjects:@15, @15, @70, nil] forKey:@6];
        [self.attackPP setObject:[NSMutableArray arrayWithObjects:@15, @15, @85, nil] forKey:@7];
        [self.attackPP setObject:[NSMutableArray arrayWithObjects:@5, @5, @105, nil] forKey:@8];
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

- (BOOL)poisonStingWithPokemon:(Pokemon *)pokemonTarget
{
    return [self callAttackWithId:@6 andPokemonTarget:pokemonTarget];
}

- (BOOL)toxicWithPokemon:(Pokemon *)pokemonTarget
{
    return [self callAttackWithId:@7 andPokemonTarget:pokemonTarget];
}

- (BOOL)acidWithPokemon:(Pokemon *)pokemonTarget
{
    return [self callAttackWithId:@8 andPokemonTarget:pokemonTarget];
}

@end
