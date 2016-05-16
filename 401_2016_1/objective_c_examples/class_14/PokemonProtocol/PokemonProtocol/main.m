//
//  main.m
//  PokemonProtocol
//
//  Created by CICCC1 on 2016-05-16.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bulbasaur.h"
#import "Ekans.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        Bulbasaur *bulbasaur = [[Bulbasaur alloc] initWithNickname:@"Bulba" level:10 HP:15000 attack:25 andDefense:20];
        Ekans *ekans = [[Ekans alloc] initWithNickname:nil level:10 HP:15000 attack:23 andDefense:25];
        
        while(bulbasaur.HP > 0 && ekans.HP > 0)
        {
            int bulbasaurOrEkans = arc4random_uniform(2);
            int nAttack = arc4random_uniform(3);
            if (bulbasaurOrEkans == 0)
            {
                switch (nAttack)
                {
                    case 0:
                        NSLog(@"[Vine Whip]");
                        [bulbasaur vineWhipWithPokemon:ekans];
                        break;
                    case 1:
                        NSLog(@"[Toxic]");
                        [bulbasaur toxicWithPokemon:ekans];
                        break;
                    case 2:
                        NSLog(@"[Solar Beam]");
                        [bulbasaur solarBeamWithPokemon:ekans];
                        break;
                        
                    default:
                        break;
                }
            }
            else
            {
                switch (nAttack)
                {
                    case 0:
                        NSLog(@"[Poison Sting]");
                        [ekans poisonStingWithPokemon:bulbasaur];
                        break;
                    case 1:
                        NSLog(@"[Toxic]");
                        [ekans toxicWithPokemon:bulbasaur];
                        break;
                    case 2:
                        NSLog(@"[Acid]");
                        [ekans acidWithPokemon:bulbasaur];
                        break;
                        
                    default:
                        break;
                }
            }
        }
    }
    
    return 0;
}
