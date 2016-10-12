//
//  Pokemon.h
//  PokemonProtocol
//
//  Created by Dennis Pham on 2016-05-16.
//  Copyright © 2016 Dennis Pham. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PokemonProtocols.h"

@interface Pokemon : NSObject <StarterBase>

@property(nonatomic, copy)NSString *nickname;
@property(nonatomic, readonly)NSInteger level;
@property(nonatomic)NSInteger HP;
@property(nonatomic)NSInteger EXP;
@property(nonatomic)NSInteger attack;
@property(nonatomic)NSInteger defense;
@property(nonatomic, readonly)NSInteger AmountXPNextLevel;
@property(nonatomic)NSMutableDictionary *attackPP;


- (NSInteger)damageWithPokemon:(Pokemon *)pokemonTarget andIdAttack:(NSNumber *)idAttack;

@end
