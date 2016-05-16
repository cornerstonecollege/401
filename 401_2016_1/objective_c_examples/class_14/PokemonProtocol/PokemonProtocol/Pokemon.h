//
//  Pokemon.h
//  PokemonProtocol
//
//  Created by CICCC1 on 2016-05-16.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PokemonProtocols.h"

@interface Pokemon : NSObject <StarterBaseProtocol>

@property (nonatomic, copy) NSString *nickname;
@property (nonatomic, readonly) NSInteger level;
@property (nonatomic) NSInteger HP;
@property (nonatomic) NSInteger attack;
@property (nonatomic) NSInteger defense;
@property (nonatomic) NSMutableDictionary *attackPP;

- (instancetype) initWithNickname:(NSString *)nickname level:(NSInteger)level HP:(NSInteger)HP attack:(NSInteger)attack andDefense:(NSInteger)defense;

- (BOOL) callAttackWithId:(NSNumber *)idAttack andPokemonTarget:(Pokemon *)pokemonTarget;

@end
