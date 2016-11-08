//
//  main.m
//  Exercise1
//
//  Created by Christian on 2016-09-07.
//  Copyright © 2016 Christian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Coffe.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        Coffe *mocha = [[Coffe alloc] initWithFlavor:@"Chocolate" andNumberScoops:3 andSize:@"G"];
        Coffe *FreVaniLatte = [[Coffe alloc] initWithFlavor:@"Vanilla" andNumberScoops:3 andSize:@"G"];
        Coffe *PSL = [[Coffe alloc] initWithFlavor:@"Pumpkin" andNumberScoops:2 andSize:@"T"];
        NSLog(@"%@", mocha);
        NSLog(@"%@", FreVaniLatte);
        NSLog(@"%@", PSL);
        
    }
    return 0;
}
