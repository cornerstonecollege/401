//
//  PokemonProtocols.h
//  PokemonProtocol
//
//  Created by Dennis Pham on 2016-05-16.
//  Copyright © 2016 Dennis Pham. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Pokemon;

@protocol StarterBase <NSObject>

- (BOOL) tackleWithPokemon:(Pokemon *)pokemonTarget;
- (BOOL) growlWithPokemon: (Pokemon *)pokemonTarget;



@end

@interface PokemonProtocols : NSObject

@end


