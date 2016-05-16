//
//  Pokemon.m
//  PokemonProtocol
//
//  Created by Dennis Pham on 2016-05-16.
//  Copyright © 2016 Dennis Pham. All rights reserved.
//

#import "Pokemon.h"

@implementation Pokemon

-(instancetype)init
{
    self = [super init];
    if(self)
    {
        
        _attackPP = [NSMutableDictionary dictionary];
        [_attackPP setObject:@[@35 ,@35, @50] forKey:@1];
        [_attackPP setObject:@[@40 ,@40, @50] forKey:@2];
        
        

    }
        return self;
}



-(BOOL)tackleWithPokemon:(Pokemon *)pokemonTarget
{
    [self damageWithPokemon:pokemonTarget andIdAttack:@1];
    
}

-(BOOL)growlWithPokemon:(Pokemon *)pokemonTarget
{
    [self damageWithPokemon:pokemonTarget andIdAttack:@2];
    
}

-(BOOL)isMoveAllowedWithIdAttack:(NSNumber *)idAttack
{
    NSArray *value = [self.attackPP objectForKey: idAttack];
    NSNumber *PPObj = (NSNumber *)[value [1]];
    NSInteger PP = [PPObj integerValue];
    if ([value[1] integerValue] > 0)
    {
        
    }
    
}

- (NSInteger)damageWithPokemon:(Pokemon *)pokemonTarget andIdAttack:(NSNumber *)idAttack
{
    
    NSArray *value = [self.attackPP objectForKey: idAttack];
    NSNumber *powerBaseObj = (NSNumber *)[value lastObject];
    NSInteger powerBase = [powerBaseObj integerValue];
    
    if(powerBase == 0)
        return 0;
    
    
    return (2 * self.level + 10 / 250)* (self.attack / pokemonTarget.defense) * powerBase + 2;
}


@end
