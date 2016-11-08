//
//  main.m
//  class 13
//
//  Created by Dennis Pham on 2016-05-12.
//  Copyright © 2016 Dennis Pham. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pokemon.h"
#import "Pikachu.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        Pokemon *pokemon = [[Pokemon alloc] init];
        [pokemon setPokemonName:@"Pigeot"];
        
        Pokemon *pokemonBlastoise = [[Pokemon alloc] initWithName:@"Blastoise" andType:TP_WATER];
        
        
        
        
        NSLog(@"The pokemon's name is: %@ and the type is %lu", [pokemon getPokemonName], pokemon.type);
        
        NSLog(@"The pokemon's name is: %@ and the type is %lu", pokemonBlastoise.name, pokemonBlastoise.type);
        
        NSLog(@"The type of the %@ is %@ and %@ is %@", pokemon.name, [pokemon getTypeToString], pokemonBlastoise.name, pokemonBlastoise.getTypeToString);
        
        Pikachu *mainPikachu = [Pikachu new]
 
        
    
    }
    return 0;
}
