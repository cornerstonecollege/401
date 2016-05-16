//
//  Pokemon.m
//  PokemonProtocol
//
//  Created by CICCC1 on 2016-05-16.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import "Pokemon.h"

@implementation Pokemon

- (instancetype)init
{
    [NSException exceptionWithName:@"Use initWithNickname..." reason:@"This inializer does not perform any changes in a pokemon." userInfo:nil];
    return nil;
}

- (instancetype) initWithNickname:(NSString *)nickname level:(NSInteger)level HP:(NSInteger)HP attack:(NSInteger)attack andDefense:(NSInteger)defense
{
    self = [super init];
    if (self)
    {
        _nickname = nickname;
        _level = level;
        _HP = HP;
        _attack = attack;
        _defense = defense;
        
        _attackPP = [NSMutableDictionary dictionary];
        [_attackPP setObject:[NSMutableArray arrayWithObjects:@35, @35, @50, nil] forKey:@1];
        [_attackPP setObject:[NSMutableArray arrayWithObjects:@40, @40, @0, nil] forKey:@2];
    }
    
    return self;
}

- (BOOL)tackleWithPokemon:(Pokemon *)pokemonTarget
{
    return [self callAttackWithId:@1 andPokemonTarget:pokemonTarget];
}

- (BOOL)growlWithPokemon:(Pokemon *)pokemonTarget
{
    return [self callAttackWithId:@2 andPokemonTarget:pokemonTarget];
}

- (BOOL) callAttackWithId:(NSNumber *)idAttack andPokemonTarget:(Pokemon *)pokemonTarget
{
    if (![self isMoveAllowedWithIdAttack:idAttack])
        return false;
    
    NSInteger damage = [self damageWithPokemon:pokemonTarget andIdAttack:idAttack];
    pokemonTarget.HP -= damage;
    NSLog(@"%@ attacked %@ with %ld of damage. %@ HP: %ld", self.nickname, pokemonTarget.nickname, (long) damage,pokemonTarget.nickname, (long)pokemonTarget.HP);
    
    if (pokemonTarget.HP <= 0)
    {
        [pokemonTarget die];
    }
    
    return true;
}

- (BOOL) isMoveAllowedWithIdAttack:(NSNumber *)idAttack
{
    NSMutableArray *value = [self.attackPP objectForKey:idAttack];
    NSNumber *PPObj = (NSNumber *)value[1];
    NSInteger PP = [PPObj integerValue];
    if (PP > 0)
    {
        value[1] = [NSNumber numberWithInteger:(PP - 1)];
        return true;
    }
    
    return false;
}

- (NSInteger) damageWithPokemon:(Pokemon *)pokemonTarget andIdAttack:(NSNumber *)idAttack
{
    NSArray *value = [self.attackPP objectForKey:idAttack];
    NSNumber *powerBaseObj = (NSNumber *)[value lastObject];
    NSInteger powerBase = [powerBaseObj integerValue];
    
    if (powerBase == 0)
        return 0;
    
    return (2 * self.level + 10 / 250) * (self.attack / pokemonTarget.defense) * powerBase+ 2;
}

- (void) die
{
    NSLog(@"Pokemon %@ fainted.", self.nickname);
}

@end
