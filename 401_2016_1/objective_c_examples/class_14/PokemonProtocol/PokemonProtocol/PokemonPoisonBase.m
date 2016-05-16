//
//  PokemonPoisonBase.m
//  PokemonProtocol
//
//  Created by CICCC1 on 2016-05-16.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import "PokemonPoisonBase.h"

@implementation PokemonPoisonBase

- (instancetype)initWithNickname:(NSString *)nickname level:(NSInteger)level HP:(NSInteger)HP attack:(NSInteger)attack andDefense:(NSInteger)defense
{
    self = [super initWithNickname:nickname level:level HP:HP attack:attack andDefense:defense];
    
    if (self)
    {
        [self.attackPP setObject:[NSMutableArray arrayWithObjects:@15, @15, @65, nil] forKey:@6];
        [self.attackPP setObject:[NSMutableArray arrayWithObjects:@15, @15, @80, nil] forKey:@7];
        [self.attackPP setObject:[NSMutableArray arrayWithObjects:@5, @5, @100, nil] forKey:@8];
    }
    
    return self;
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
