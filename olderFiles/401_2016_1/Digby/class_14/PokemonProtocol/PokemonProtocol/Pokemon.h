//
//  Pokemon.h
//  PokemonProtocol
//
//  Created by Digby Andrews on 2016-05-16.
//  Copyright © 2016 Digby Andrews. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PokemonProtocols.h"


@interface Pokemon : NSObject <StarterBaseProtocol>

@property (nonatomic, copy) NSString *nicname;
@property (nonatomic, readonly) NSInteger level;
@property (nonatomic) NSInteger HP;
@property (nonatomic) NSMutableDictionary *attackPP;
@property (nonatomic) NSInteger attack;
@property (nonatomic) NSInteger defense;

- (instancetype) initWithNickname:(NSString *)nickname level:(NSInteger) level HP:
(NSInteger)HP attack:(NSInteger)attack andDefense:(NSInteger)defense;

- (BOOL) callAttackWithId:(NSNumber *)idAttack andPokemonTarget:(Pokemon *)pokemonTarget;



@end
