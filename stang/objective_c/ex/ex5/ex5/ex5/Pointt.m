//
//  Pointt.m
//  ex5
//
//  Created by SG on 2016-09-21.
//  Copyright © 2016 SG. All rights reserved.
//

#import "Pointt.h"

@implementation Pointt

// zaczynamy od zdefiniowania zmiennych
{
    int x, y;
}

//przypisujemy zmienna do metody ustalania zmiennej x

-(void) setX:(int)getX
{
    x = getX;
}

//przypisujemy zmienna do metody ustalania zmiennej y

-(void) setY:(int)getY
{
    y = getY;
}

//metoda zwracajaca x
-(int) x
{
    return x;
}

//metoda zwracaja y
-(int) y
{
    return y;
}

//metoda pokazuja wynik
-(void) show
{
    NSLog(@"x = %i y = %i", x, y);
}
@end
