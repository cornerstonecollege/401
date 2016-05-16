//
//  PokemonProtocols.h
//  PokemonProtocol
//
//  Created by Digby Andrews on 2016-05-16.
//  Copyright © 2016 Digby Andrews. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Pokemon;

@protocol StarterBaseProtocol <NSObject>

- (BOOL) tackleWithPokemon: (Pokemon *)pokemonTarget;
- (BOOL) growlWithPokemon: (Pokemon *)pokemonTarget;

@end

@protocol GrassBaseProtocol <NSObject>

- (BOOL) vineWhipWithPokemon :(Pokemon *)pokemonTarget;
- (BOOL) razorLeafWithPokemon :(Pokemon *)pokemonTarget;
- (BOOL) solarBeamWithPokemon :(Pokemon *)pokemonTarget;

@end

@protocol PiosonBaseProtocol <NSObject>

- (BOOL) poisonStingWithPokemon :(Pokemon *)pokemonTarget;
- (BOOL) toxicWithPokemon :(Pokemon *)pokemonTarget;
- (BOOL) acidWithPokemon :(Pokemon *)pokemonTarget;
@end

@interface PokemonProtocols : NSObject
@end
