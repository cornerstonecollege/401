//
//  main.m
//  UsingProperties
//
//  Created by CICCC1 on 2016-05-12.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pokemon.h"
#import "Pikachu.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        Pokemon *pokemon = [[Pokemon alloc] init];
        [pokemon setPokemonName:@"Pikachu"];
        
        Pokemon *pokemonBlastoise = [[Pokemon alloc] initWithName:@"Blastoise" andType:TP_WATER];
        
        // pokemon.name = @"Pikachu" // sugar syntax for [pokemon setName:@"Pikachu"];
        // NSString *pokemonName = pokemon.name // sugar syntax for [pokemon name]
        
        NSLog(@"The pokemon's name is: %@ and the type is %lu", [pokemon getPokemonName], pokemon.type);
        
        NSLog(@"The pokemon's name is: %@ and the type is %lu", pokemonBlastoise.name, pokemonBlastoise.type);
        
        NSLog(@"The type of %@ is %@ and %@ is %@", pokemon.name, [pokemon getTypeToString], pokemonBlastoise.name, pokemonBlastoise.getTypeToString);
        
        Pikachu *mainPikachu = [[Pikachu alloc] initWithName:@"Bob"];
        NSLog(@"Pikachu %@ is a(n) %@ type", mainPikachu.name, mainPikachu.getTypeToString);
    }
    return 0;
}
